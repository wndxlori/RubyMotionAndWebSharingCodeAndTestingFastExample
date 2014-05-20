class PreviousResultsLabel < UITextView

  def init
    super

    self.editable = false
    self.textAlignment = NSTextAlignmentCenter

    self
  end

  def update(data)
    if data[:previous_results] && data[:previous_results].length > 0
      self.text = "Previous Results\n"
      data[:previous_results].each do |r|
        self.text += "#{r[:celsius]} = #{r[:fahrenheit]}\n"
      end
    end
  end
end