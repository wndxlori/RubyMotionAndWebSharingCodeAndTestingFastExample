class TemperatureField < UITextField
  def init
    super

    self.textAlignment = NSTextAlignmentCenter
    self.keyboardType = UIKeyboardTypeDecimalPad
    self.placeholder = "Enter a temperature"
    self.layer.borderColor = UIColor.lightGrayColor.CGColor
    self.layer.borderWidth = 1
    self.layer.cornerRadius = 5

    self
  end
end