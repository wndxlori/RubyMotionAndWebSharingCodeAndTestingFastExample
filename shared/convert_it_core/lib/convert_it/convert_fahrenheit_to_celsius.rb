class ConvertFahrenheitToCelsius
  def initialize(fahrenheit)
    @fahrenheit = fahrenheit
  end

  def result
    Celsius.new(((@fahrenheit - 32) / 1.8))
  end
end
