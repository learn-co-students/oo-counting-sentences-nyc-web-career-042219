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
  	# binding.pry
  	new_arr = []
  	count = 0
  	arr = self.split(/(?<=[?.!])\s*/)
  	for sentence in arr
  		if "abcdefghijklmnopqrstuvwxyz".split('').any? &sentence.downcase.method(:include?)
  			count += 1
  		end
  	end
  	count
  end

end

# binding.pry