# Exercise_1.rb

# Below we have given you an array and a number. Write a program that checks to
# see if the number appears in the array.

puts "Code before watching video"

arr = [1, 3, 5, 7, 9, 11]
# removed number = 3, as this was being called inside my method
# i defined a method here, with a block
def numfinder(arr)
  arr.select {|number| number == 3 }
end

puts numfinder(arr)
# the best method to use would have been the "include?" method, but this is a
# bolean value (true/false)


puts "Code after watching video"

arr = [1, 3, 5, 7, 9, 11]
number = 3
# this was only a block
arr.each do |num|
  if num == number
    puts "#{number} is in the array."
  end
end

# ... or...
if arr.include?(number)
  puts "#{number} is indeed in the array."
end
