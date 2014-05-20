class CelsiusToFahrenheitButton < UIButton
  def init
    super

    setTitle("\u2103 to \u2109", forState: UIControlStateNormal)
    setTitleColor(UIColor.blackColor, forState: UIControlStateNormal)

    self
  end
end