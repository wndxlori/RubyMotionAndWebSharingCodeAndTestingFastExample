require 'minitest/autorun'
require 'minitest/mock'
require 'convert_it/store_result'
require 'convert_it/fahrenheit'
require 'convert_it/celsius'

class StoreResultTest < MiniTest::Unit::TestCase
  def test_storing_a_result
    repo = MiniTest::Mock.new
    options = { celsius: Celsius.new(15.0), fahrenheit: Fahrenheit.new(59.0) }
    repo.expect(:store_result, true, [options])

    StoreResult.new(repo, options).store

    repo.verify
  end
end
