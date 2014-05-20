require 'minitest/autorun'
require 'minitest/pride'
require 'in_memory_repo'

class InMemoryRepoTest < MiniTest::Unit::TestCase
  def test_getting_all_results
    result_hash = { celsius: 15.0, fahrenheit: 59.0 }
    repo = InMemoryRepo.new(results: [result_hash])
    assert repo.all_results == [result_hash]
  end

  def test_storing_a_result
    result_hash = { celsius: 15.0, fahrenheit: 59.0 }
    repo = InMemoryRepo.new
    repo.store_result result_hash
    assert repo.all_results == [result_hash]
  end
end
