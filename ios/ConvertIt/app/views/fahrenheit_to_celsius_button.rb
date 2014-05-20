class FahrenheitToCelsiusButton < UIButton
  def init
    super

    setTitle("\u2109 to \u2103", forState: UIControlStateNormal)
    setTitleColor(UIColor.blackColor, forState: UIControlStateNormal)

    self
  end
end