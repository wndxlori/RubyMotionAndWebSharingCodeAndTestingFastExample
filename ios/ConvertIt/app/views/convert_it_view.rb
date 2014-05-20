class ConvertItView < UIView
  attr_reader :output, :temperature_field, :celsius_to_fahrenheit_button, :fahrenheit_to_celsius_button

  def init
    super

    setBackgroundColor UIColor.whiteColor

    addSubview(@temperature_field = TemperatureField.new)
    addSubview(@celsius_to_fahrenheit_button = CelsiusToFahrenheitButton.new)
    addSubview(@fahrenheit_to_celsius_button = FahrenheitToCelsiusButton.new)
    addSubview(@output = OutputLabel.new)
    addSubview(@previous = PreviousResultsLabel.new)

    @temperature_field.frame = [[20, 40], [280, 50]]
    @celsius_to_fahrenheit_button.frame = [[20, 110], [120, 50]]
    @fahrenheit_to_celsius_button.frame = [[160, 110], [120, 50]]
    @output.frame = [[20, 180], [280, 50]]
    @previous.frame = [[20, 250], [280, 75]]

    self
  end

  def update(data)
    @previous.update(data)
  end
end