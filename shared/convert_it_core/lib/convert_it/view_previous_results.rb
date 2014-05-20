class ViewPreviousResults
  def initialize(repo)
    @repo = repo
  end

  def result
    @repo.all_results
  end
end
