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
    sent_arr=[]
    count=0
    sent_arr=self.split('.')
#    binding.pry
    sent_arr.each do |frag|
      if frag != ""
          frag_arr=frag.split('?')
          frag_arr.each do |subfrag|
            if subfrag != ""
              subfrag_arr=subfrag.split('!')
              subfrag_arr.each do |token|
                if token != ""
                  count +=1
  #                binding.pry
                end
              end
            end
          end
        end

      end
  #    binding.pry
    #  return(count)
      count
  end
end
