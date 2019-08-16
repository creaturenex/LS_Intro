# frozen_string_literal: true

# Final_Exercises/Exercise_15.rb

# Use Ruby's Array method delete_if and String method start_with? to delete all
# of the words that begin with an "s" in the following array.

puts "Code before watcing video"

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

p arr
arr.delete_if { |word| word.start_with?(/s/i) }
# I used a regex for this and gave me a correct answer
# Looking at the solution I could have written the code below
# arr.delete_if { |word| word.start_with?("s") }
p arr

# Then recreate the arr and get rid of all of the words that start with "s" or
# starts with "w".

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

p arr
arr.delete_if { |word| word.start_with?(/[s, w]/i) }
# Using this regex method works! I was able to filter out words that start with
# "s" or "w" by using an array!
# # Looking at the solution I could have written the code below
# arr.delete_if { |word| word.start_with?("s", "w") }
p arr
