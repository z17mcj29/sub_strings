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
test_word_three = "F@st"

def compare(word1, word2)
  result = false
  word_1 = word1.dup
  word_2 = word2.dup
  word_1_array = word_1.downcase.split("")
  word_2_array = word_2.downcase.split("")
  comparison_array = word_1_array & word_2_array
  comparison_array_to_string = comparison_array.join()
  result = true if comparison_array_to_string == word2.downcase 
  # result = false if comparison_array_to_string != word2.downcase
  # This seems to work. I'm sure there is a better way that I don't
  # understand yet. I'm learning about how object mutation works in Ruby.
  result
  # After building this I came across the #intersection method that I believe
  # does the same thing my code I just made does. I am going to keep this
  # for now but I will remember #intersection for the future.
end

# p compare(test_word_one, test_word_two)
# p compare(test_word_one, test_word_three)

def test(word1, word2)
  compare(word1, word2)
end

# p test(test_word_one, test_word_two)
# p test(test_word_one, test_word_three)

# Saving this code for historical sake. I'm starting my function over because it went off the rails.
# def compare(word1, word2)
#   word1.downcase
#   word2.downcase
#   word1_array = word1.split("")
#   print word1_array
#   word2_array = word2.split("")
#   print word2_array
#   word_compare = word1_array && word2_array
#   print word_compare
#   word_compare = word_compare.join()
#   print word_compare
#   result = true if word2 == word_compare
#   result
# end

# # p compare(test_word_one, test_word_three)

# def compare_2(word1, word2)
#   word2_comparison = word2.dup
#   word1_array = word1.downcase.split("")
#   print word1_array
#   puts " "
#   word2_array = word2.downcase.split("")
#   print word2_array
#   word_compare = word1_array.join & word2_array
#   puts " "
#   print word_compare
#   puts " "
#   print word1
#   puts " "
#   print word2
#   puts " "
#   print word2_comparison
#   true if word_compare == word2_comparison   

# end
# p compare_2("tested", "tvst")



# I now need to figure out how to reduce two arrays together. I know how to convert the dictionary
# to an array of words.

def sub_strings(word, dictionary)
  #convert word into an array
  dictionary.reduce(Hash.new(0)) do |acc, word2|
    if compare(word, word2)
      acc[word2] += 1
      acc
    else
      acc
    end
  end  
end

