# Exercise 5

# Rewrite your program from exercise 3 using a case statement.
# Wrap this new case statement in a method and make sure it still works.

puts "Code before watching video"

def num_range
  x = gets.chomp.to_i
  case
  when x < 0
    puts "You can't enter a negative number!"
  when x <= 50
    puts "#{x} is between 0 - 50!"
  when x <= 100
    puts "#{x} is between 51 - 100!"
  when x > 100
    puts "#{x} is above 100!"
  end
end

puts "Type any number between 0 and 100"
puts num_range

# this took forever when I looked up case_statement, I learned there are 2 different types, It looks like I was combining the two types and was having the hardest time.


puts "Code after watching video"

def num_range(x) # added a parameter to the definiton
  case # I removed the user input from the method definiton (implicit?)
  when x < 0
    puts "You can't enter a negative number!"
  when x <= 50
    puts "#{x} is between 0 - 50!"
  when x <= 100
    puts "#{x} is between 51 - 100!"
  when x > 100
    puts "#{x} is above 100!"
  end
end

puts "Type any number between 0 and 100"
x = gets.chomp.to_i # The user input was added outside the method (explicit?)
puts num_range(x) # added the argument which should be invoked...as the paramter in method defintion.
