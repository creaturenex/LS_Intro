# Write a program that asks the user for their age in years, and then converts
# that age to months.

# Examples:

# $ ruby age.rb
# >> What is your age in years?
# 35
# You are 420 months old.

puts "What is your age? (round to the nearest whole number)"
age = gets.chomp.to_i
age = age * 12
puts "You are #{age} months old"
