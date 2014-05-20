require 'minitest/autorun'
require 'convert_it/convert_fahrenheit_to_celsius'
require 'convert_it/celsius'

class ConvertFahrenheitToCelsiusTest < MiniTest::Unit::TestCase
  def test_result
    control = ConvertFahrenheitToCelsius.new(61.9)
    assert_equal Celsius.new(16.6), control.result
  end
end
