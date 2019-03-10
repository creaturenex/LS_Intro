# Excercise 3

# Write a program that takes a number from the user between 0 and 100
# and reports back whether the number is between 0 and 50, 51 and 100,
# or above 100.

puts "Code before watching video"

def num_range(x)
  if x >= 0 and x <= 50
    puts "Your number is between 0 - 50!"
  elsif x >= 51 and x <= 100
    puts "Your number is between 51 - 100!"
  elsif x > 100
    puts "Your number is above 100!"
  end
end
# my code does not account for negative numbers, but I knew that.
# my does does not use string interpolation, need to figure out when to use it.
puts "Type any number between 0 and 100"
x = gets.chomp.to_i
puts num_range (x)



puts "Code after watching video"

puts "Please enter a number between 0 and 100."
number = gets.chomp.to_i

if number < 0
  puts "You can't enter a negative number!"
elsif number <= 50
  puts "#{number} is between 0 and 50"
elsif number <= 100
  puts "#{number} is between 51 and 100"
else
  puts "#{number} is above 100"
end
