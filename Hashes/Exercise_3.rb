# Hashes/Exercise 3

# Using some of Ruby's built-in Hash methods, write a program that loops through
# a hash and prints all of the keys. Then write a program that does the same
# thing except printing the values. Finally, write a program that prints both.

h1 = {mammal: "dog", bird: "hawk", fish: "shark", amphibian: "frog"}
puts "Code before watching video"
puts h1.keys
puts h1.values
puts h1.each {|key, value| puts "#{key} is #{value}"}

puts "Code after watching video
added the 'each_' to print only key or value, also removed puts"
h1.each_key {|key| puts key}
h1.each_value {|value| puts value}
h1.each {|key, value| puts "a #{value} is a #{key}"}
