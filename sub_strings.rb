dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit", "below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
end_value = Hash.new(0)

def sub_strings_old(words, dict, arr)
  word = words.split(" ")
  word.each do |word_1|
    dict.each do |word_2|
      if word_1.downcase == word_2.downcase
        arr[word_1.downcase] += 1
      end
    end
  end
    arr
end


#ub_strings('below it i sit down horn finally', dictionary, end_value)
#p end_value


#I think I figured it out. I went down alot of wrong paths and in the end it was much simpler than I made it out to be.
#I didn't quite solve the problem I need to solve for partial matches. I will tackle that tomorrow.
#word_1.downcase.include?(word_2.downcase) I need to review include a bit. I don't think it will be hard to implement this.

def sub_strings(words, dict, arr)
  word = words.split(" ")
  dict.each do |dict_word|
    word.each do |word|
      if dict_word.downcase.include?(word.downcase)
        arr[dict_word.downcase] += 1
      end
    end
  end
  arr
end

sub_strings('below it i sit down horn finally', dictionary, end_value)
p end_value

#I might come back to this in the future, but I think I solved this one. I am keeping my previous solution from yesterday as sub_strings_old.
#This one was a lot of work for what amounts to five lines of code but I think I learned alot from it.