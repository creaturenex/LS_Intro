# Exercise_7b.rb

# Write a program that iterates over an array and builds a new array that is the
# result of incrementing each value in the original array by a value of 2.
# You should have two arrays at the end of this program, The original array and
# the new array you've created. Print both arrays to the screen using the p
# method instead of puts.

puts "Code before watching video"

arr = [1, 2, 3, 4]
arr2 = []
arr.each {|x| arr2 << x + 2}
# this method works if you have an empty array.
# The shovel operator '<<' pushes values into the emptry array.

p arr
p arr2
