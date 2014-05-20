class DisplayFahrenheit
  def initialize(output_label, repo)
    @output = output_label
    @repo = repo
  end

  def for_celsius(celsius)
    result = ConvertCelsiusToFahrenheit.new(celsius).result
    StoreResult.new(@repo, { celsius: celsius, fahrenheit: result }).store
    @output.text = "#{result}"
  end
end