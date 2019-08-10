# Hashes/Exercise_6.rb

# Given the array...

words = ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live', 'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide', 'flow', 'neon']


words_array = Array[words.collect {|words| words.split("").sort}]

puts words_array
