class StoreResult
  def initialize(repo, options)
    @repo = repo

    @fahrenheit = options[:fahrenheit]
    @fahrenheit = Fahrenheit.new(options[:fahrenheit]) unless options[:fahrenheit].is_a?(Fahrenheit)

    @celsius = options[:celsius]
    @celsius = Celsius.new(options[:celsius]) unless options[:celsius].is_a?(Celsius)
  end

  def store
    @repo.store_result({celsius: @celsius, fahrenheit: @fahrenheit})
  end
end
