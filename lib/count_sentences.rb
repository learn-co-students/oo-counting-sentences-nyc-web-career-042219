require 'pry'

class String

  def sentence?
    self[-1] == "."
  end

  def question?
    self[-1] == "?"
  end

  def exclamation?
    self[-1] == "!"
  end

  def count_sentences
    arr = self.split(/[\.\?\!]/)
    count = 0 
    arr.each { |str| count += 1 if str == ""}
    arr.length - count
  end
end