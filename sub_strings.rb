# These are my initial thoughts before going through the Ruby documentation to try and solve.
# Need to find the equivalent for the javascript (...item) spread operator. I have to be able to 
# submit multiple words for my dictionary to find.
# This looks like a #map solution where I make an empty hash and add each solution starting
# at 0 and increment by 1 each time a duplicate is found. I believe I remember seeing an
# example of that.
# My first item of order will probably be figuring out how to compare strings to each other
# and extracting values that match all or part of my comparison string.
# I think this will take me a few hours, but I probably have what I need to complete the 
# project. I think the string comparison is the part I don't know much about, but I'll 
# do some research on it.

# I have been doing some research. I have found a method called #include? It works on
# full words like this
#   my_string = "Ruby programming"
#   puts my_string.include?("program")  #Output: true
#   puts my_string.include?("Java")     #Output: false
# I'm going off the top of my head here, but I think I can combine
# two arrays with [] && [] and it will only return values that both arrays have.
# If I combine the include? and && method I think I can tell if a word exists
# in the candidate word.

test_word_one = "Faster"
test_word_two = "Fast"

def compare(word1, word2)
  word1.downcase
  word2.downcase
  word1_array = word1.split("")
  print word1_array
  word2_array = word2.split("")
  print word2_array
end

puts compare(test_word_one, test_word_two)