# Exercise_7.rb

# Write a program that iterates over an array and builds a new array that is the
# result of incrementing each value in the original array by a value of 2.
# You should have two arrays at the end of this program, The original array and
# the new array you've created. Print both arrays to the screen using the p
# method instead of puts.

puts "Code before watching video"

arr = [1, 2, 3, 4]

arr2 = arr.map {|x| x + 2}
# the first time I used the 'each' method, but it did not add the new value to arr2
# 'each' does not create a new array it just selects, 'map' creates a new array.
# 'each' would work if I 'push' or shoveled '<<' into a new emptry array.
p arr
p arr2
