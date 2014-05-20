require 'minitest/autorun'
require 'convert_it/fahrenheit'

class FahrenheitTest < MiniTest::Unit::TestCase
  def test_to_s
    assert_equal Fahrenheit.new(10.0).to_s, "10.0 \u2109"
  end

  def test_equality
    assert_equal Fahrenheit.new(10.0), Fahrenheit.new(10.0)
  end

  def test_one_decimal_place
    assert_equal Fahrenheit.new(10.34).to_s, "10.3 \u2109"
  end
end