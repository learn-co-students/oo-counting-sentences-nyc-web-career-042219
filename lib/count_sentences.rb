require 'pry'

class String

  def sentence?
    self.end_with?(".")
    #does this mean we're telling #sentence to be explicitly aware of itself?
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    self.split(/[.?!]+/).count
  end

end
