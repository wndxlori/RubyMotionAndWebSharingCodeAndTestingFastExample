class Celsius
  def initialize(temp)
    @temp = temp
  end

  def ==(other_celsius)
    to_s == other_celsius.to_s
  end

  def to_s
    "#{@temp.round(1)} \u2103"
  end
end