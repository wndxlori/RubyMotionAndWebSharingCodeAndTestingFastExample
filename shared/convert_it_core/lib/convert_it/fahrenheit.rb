class Fahrenheit
  def initialize(temp)
    @temp = temp
  end

  def ==(other_fahrenheit)
    to_s == other_fahrenheit.to_s
  end

  def to_s
    "#{@temp.round(1)} \u2109"
  end
end