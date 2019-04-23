require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")

  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    new_arr = []
    self.split(' ').map{|e| e.end_with?("!", "?", ".") ? new_arr << e : false}
    new_arr.length

  end
end
