# frozen_string_literal: true

# Final_Exercises/Exercise_1.rb

# Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# and print out each value.

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

array.each { |i| puts i }

array.each do |i|
  puts i
end
