require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end
  end

  def count_sentences
    self.gsub(/[.?!]/, '\1|').split("|").delete_if{ |x| x.length < 2 }.length
    # binding.pry
  end

end
# string = String.new("This, well, is a sentence. This is too!! And so is this, I think? Woo...")
# string.count_sentences
# binding.pry
