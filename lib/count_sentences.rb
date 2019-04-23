require 'pry'

class String

  def sentence?

     if self.reverse[0,1] == "."
       return true
     else
       return false
     end

  end

  def question?

    if self.reverse[0,1] == "?"
      return true
    else
      return false
    end

  end

  def exclamation?

    if self.reverse[0,1] == "!"
      return true
    else
      return false
    end

  end

  def count_sentences
    arr = self.chars
    count = 0
    arr.each_with_index do |char, index|

      if ( char == "." || char == "!" || char == "?" ) && ( arr[index-1].match(/[a-zA-Z]/)  )
        count = count +1
      end
    end
    count
  end
end
