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
    new_array = []
    self.split.map do |x|
      if x.end_with?('.', '!', '?')
        new_array << x
      end
    end
    new_array.count
  end

end
