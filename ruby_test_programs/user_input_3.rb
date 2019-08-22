# Write a program that asks the user whether they want the program to print
# "something", then print it if the user enters y. Otherwise, print nothing.

# xamples:
# $ ruby something.rb
# >> Do you want me to print something? (y/n)
# y
# something

# $ ruby something.rb
# >> Do you want me to print something? (y/n)
# n

# $ ruby something.rb
# >> Do you want me to print something? (y/n)
# help

puts "Do you want me to print something? (y/n)"
answer = gets.chomp # add .downcase to account for capital Y
if answer == "y"
 puts "something"
end
