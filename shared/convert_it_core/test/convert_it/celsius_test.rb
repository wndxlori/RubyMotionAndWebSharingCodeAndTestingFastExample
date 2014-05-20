require 'minitest/autorun'
require 'convert_it/celsius'

class CelsiusTest < MiniTest::Unit::TestCase
  def test_to_s
    assert_equal Celsius.new(10.0).to_s, "10.0 \u2103"
  end

  def test_equality
    assert_equal Celsius.new(10.0), Celsius.new(10.0)
  end

  def test_one_decimal_place
    assert_equal Celsius.new(10.34).to_s, "10.3 \u2103"
  end
end