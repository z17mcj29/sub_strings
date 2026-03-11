dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit", "below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
end_value = Hash.new(0)

def sub_strings(words, dict, arr)
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


sub_strings('below it i sit down horn finally', dictionary, end_value)
p end_value


#I think I figured it out. I went down alot of wrong paths and in the end it was much simpler than I made it out to be.
