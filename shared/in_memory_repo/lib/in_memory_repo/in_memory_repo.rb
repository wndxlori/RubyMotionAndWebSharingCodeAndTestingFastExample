class InMemoryRepo
  def initialize(seed_data = {})
    @results = seed_data[:results] || []
  end

  def all_results
    @results
  end

  def store_result(result)
    @results << result
  end
end
