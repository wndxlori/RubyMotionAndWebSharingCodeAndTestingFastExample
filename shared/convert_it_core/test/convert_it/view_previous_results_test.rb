require 'minitest/autorun'
require 'minitest/mock'
require 'convert_it/view_previous_results'

class ViewPreviousResultsTest < MiniTest::Unit::TestCase
  def test_result
    repo = MiniTest::Mock.new
    repo.expect(:all_results, true)
    ViewPreviousResults.new(repo).result
    repo.verify
  end
end
