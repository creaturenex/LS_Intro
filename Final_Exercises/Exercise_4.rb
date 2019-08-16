# frozen_string_literal: true

# Final_Exercises/Exercise_4.rb

# Append 11 to the end of the original array. Prepend 0 to the beginning.

puts 'Code before watching video'

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# the following mutate the caller so it is permanantly changing the array

p array
array.push(11)
p array
array.unshift(0)
p array
