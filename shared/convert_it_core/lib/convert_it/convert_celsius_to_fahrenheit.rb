class ConvertCelsiusToFahrenheit
  def initialize(celsius)
    @celsius = celsius
  end

  def result
    Fahrenheit.new((@celsius * 1.8 + 32))
  end
end
