array1 = [1, 2, 3, 4, 5]
array2 = [3, 5,6, 7, 8]

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit", "below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

common_elements_count = array1.reduce(0) do |count, element1|
  if array2.include?(element1)
    count + 1
  else
    count
  end
end

print common_elements_count

#I'm going to go to bed, but I think here is my next strategy to try

# perform a reduce on one array then do a #for_each for the next array
# array1.reduce |acc, string1|
#   string2.for_each |string2|
#     if compare(string1, string2)
#       acc[string2]
#     else
#       acc

# I will need to add some technical details like end statements and make the original reduce a Hash.new(0) but I'll
# work on that tomorrow. Hopefully this new strategy works. I've failed alot of ideas so far.

def sub_strings(word, dictionary)
  #convert word into an array
  word = word.split(" ")
  word.each { |word|
  
  dictionary.reduce(Hash.new(0)) do |acc, word2|
    if compare(word, word2)
      acc[word2] += 1
      acc
    else
      acc
    end
    
  end  
}  
end




def compare(word1, word2)
  result = false
  word_1 = word1.dup
  word_2 = word2.dup
  word_1_array = word_1.downcase.split("")
  word_2_array = word_2.downcase.split("")
  comparison_array = word_1_array & word_2_array
  comparison_array_to_string = comparison_array.join()
  result = true if comparison_array_to_string == word2.downcase 
 
  result

end

print sub_strings("below, go", dictionary)
