# Hashes/Exercise_6.rb

# Given the array...

words = ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live', 'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide', 'flow', 'neon']

words_hash = Hash[words.collect {|words| [words, words.split("").sort]}]
# this makes a hash from using the values from the array "words" and the following makes a
puts words_hash

unique_words = words_hash.values.uniq

unique_words_arr = Array.new(words_hash.values.uniq)
