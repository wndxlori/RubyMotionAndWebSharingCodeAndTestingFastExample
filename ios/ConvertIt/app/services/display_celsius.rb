class DisplayCelsius
  def initialize(output_label, repo)
    @output = output_label
    @repo = repo
  end

  def for_fahrenheit(fahrenheit)
    result = ConvertFahrenheitToCelsius.new(fahrenheit).result
    StoreResult.new(@repo, { celsius: result, fahrenheit: fahrenheit }).store
    @output.text = "#{result}"
  end
end