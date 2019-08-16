# frozen_string_literal: true

# Final_Exercises/Exercise_6.rb

# Get rid of duplicates without specifically removing any one value.

puts 'Code before watching video'

array = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 3]

p array
array.uniq!
# '.uniq' removes duplicates and the '!' makes it destructive.
# The nice thing about 'uniq' is you do not need to know what the values are.
# 'delete_at' requires you to know the index of the value you are removing.
p array
