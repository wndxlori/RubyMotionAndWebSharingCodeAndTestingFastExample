class Router
  def call(env)
    return [404, {}, []] unless env['REQUEST_PATH'] == '/'

    params = split_into_params(env['rack.input'])

    if params['type'] == 'f'
      result = ConvertCelsiusToFahrenheit.new(params['temp'].to_f).result
      StoreResult.new(repo, celsius: params['temp'].to_f, fahrenheit: result).store
      render_temperature result
    elsif params['type'] == 'c'
      result = ConvertFahrenheitToCelsius.new(params['temp'].to_f).result
      StoreResult.new(repo, celsius: result, fahrenheit: params['temp'].to_f).store
      render_temperature result
    else
      render_temperature ''
    end
  end

  private

  def split_into_params(input)
    input.read.split('&').map { |p| p.split('=') }.to_h
  end

  def render_temperature(result)
    render({
      result: result,
      previous_results: ViewPreviousResults.new(repo).result
    })
  end

  def render(options)
    File.open('views/form.mustache') do |f|
      [200, {}, [Mustache.render(f.read, options)]]
    end
  end

  def repo
    @repo ||= InMemoryRepo.new
  end
end