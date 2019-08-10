# Hashes/Exercise_6.rb

# Given the array...

words = ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live', 'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide', 'flow', 'neon']

# Write a program that prints out groups of words that are anagrams.
# Anagrams are words that have the same exact letters in them but in a different
# order. Your output should look something like this:

# ["demo", "dome", "mode"]
# ["neon", "none"]
# (etc)

words_hash = Hash[words.collect {|words| [words, words.split("").sort]}]
# this makes a hash from using the values from the array "words" and the following makes a
puts words_hash

unique_words = words_hash.values.uniq

unique_words_arr = Array.new(words_hash.values.uniq)

puts unique_words_arr
