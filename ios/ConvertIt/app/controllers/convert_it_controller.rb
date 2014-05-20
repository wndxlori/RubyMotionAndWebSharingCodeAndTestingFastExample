class ConvertItController < UIViewController
  def loadView
    self.view = ConvertItView.new

    view.celsius_to_fahrenheit_button.addTarget(
      self,
      action: 'celsius_to_fahrenheit:',
      forControlEvents: UIControlEventTouchUpInside
    )

    view.fahrenheit_to_celsius_button.addTarget(
      self,
      action: 'fahrenheit_to_celsius:',
      forControlEvents: UIControlEventTouchUpInside
    )
  end

  def viewDidAppear(animated)
    super
    view.update(previous_results: ViewPreviousResults.new(repo).result)
  end

  def celsius_to_fahrenheit(sender)
    DisplayFahrenheit.new(view.output, repo).for_celsius(view.temperature_field.text.to_f)
    view.update(previous_results: ViewPreviousResults.new(repo).result)
  end

  def fahrenheit_to_celsius(sender)
    DisplayCelsius.new(view.output, repo).for_fahrenheit(view.temperature_field.text.to_f)
    view.update(previous_results: ViewPreviousResults.new(repo).result)
  end

  def repo
    Dispatch.once { @repo = InMemoryRepo.new }
    @repo
  end
end