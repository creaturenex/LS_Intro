# Hashes/Exercise_6.rb

# Given the array...
words = ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live', 'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide', 'flow', 'neon']

# Write a program that prints out groups of words that are anagrams.
# Anagrams are words that have the same exact letters in them but in a different
# order. Your output should look something like this:

# ["demo", "dome", "mode"]
# ["neon", "none"]
# (etc)

# Lines 15-26 are me trying to figure it out on my own using ruby documentation
# words_hash = Hash[words.collect {|words| [words, words.split("").sort]}]
# this makes a hash from using the values from the array "words" and the following makes a
# puts words_hash

# unique_words = words_hash.values.uniq

# unique_words_arr = Array.new(words_hash.values.uniq)

# puts unique_words_arr

# words_array = Array[words.collect {|words| words.split("").sort}]

puts 'Solution from launch school'

result = {} # the video create a new empty hash which I never did, I did try to make a hash though by making 'Hash.new'

words.each do |word| # iterating through the Array
  key = word.split('').sort.join # this split the string, sorts it, the joins the letters together to form the new string
  if result.has_key?(key) # If this is true, the bottom code is excuted
    result[key].push(word) # this section is saying if we already have this key value then just add the word as a value to previous key (instead of creating a new duplicate key)
  else
    result[key] = [word] # PAY ATTENTION, this adds a new key: value pair to the referenced Hash.
  end
end

result.each_value do |v|
  puts "------"
  p v
end

# iterrate over the array
        # Means I want to go throught each item in the array. Which I wanted to do.
# sort each word into alphabetical order
        # Which I also wanted to do by using the following.
        # words_hash = Hash[words.collect {|words| [words, words.split("").sort]}]. This kinda worked but not well.
# if a key already exists, append current word into value (Array)
# otherwise, create a new key with this sorted word
        # video said the key of the hash will be the word alaphabetically sorted. In my head I invisioned the word as the key, and the alaphabetically sorted string as the value for each word for example
        # example of hash per Launch school
        # so for example {demo:, [demo, dome, mode]}
        # example of hash my idea
        # {demo: "demo", none: "enno" ...etc}

# iterating through the Array
# words.each do |words|
  #code
#end

#now to sort a word(a string) you must put "string".split('').sort.join
  # I missed the "join" method, i knew i need to combined the split words, but i did not think of the word "join" in my head I was thinking add or combine. I think I got frusturated before looking at the ruby doc. I read all the documentation for hash and array, but not in detail for the string class.

# so the results of the code above are being store in the value

 # key = words.split('').sort.join
