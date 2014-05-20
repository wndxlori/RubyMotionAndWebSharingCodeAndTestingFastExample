require 'minitest/autorun'
require 'convert_it/convert_celsius_to_fahrenheit'
require 'convert_it/fahrenheit'

class ConvertCelsiusToFahrenheitTest < MiniTest::Unit::TestCase
  def test_result
    control = ConvertCelsiusToFahrenheit.new(16.4)
    assert_equal Fahrenheit.new(61.5), control.result
  end
end
