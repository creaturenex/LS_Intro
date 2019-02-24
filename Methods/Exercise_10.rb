# Exercise_1.rb

# Write a program that prints a greeting message. This program should contain a
# method called greeting that takes a name as its parameter and returns a string
puts 'Code before watching video'

def greeting
  puts "Hello, What's your name?"
  name = gets.chomp
  puts 'Hello ' + name + '!'
end

greeting

# After looking at solution I realized that my code requires user input.
# updating code so that my defined method works a parameter (name in this case)

puts 'Code after watching video'

def greeting1(name)
  puts 'Hello ' + name + '!'
end
greeting1("Bob")
