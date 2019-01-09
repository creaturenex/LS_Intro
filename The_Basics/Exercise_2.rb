# Excercise_2
# Use the modulo operator, division, or a combination of both
# to take a 4 digit number and find the digit in the:
# 1) thousands place 2) hundreds place 3) tens place 4) ones place

# I did not know how to start as I was unsure of the directions.
# I did not understand if you wanted me to just perform math
# on the number I made up to match the number in the specific location
# I also did not think about listing the result of my code like in the example
# I was just going to do the math
puts 'Code before watching video'
1234
1234 / 1234
1234 / 617
1234 % 78 / 18
1234 % 1230

puts 'Code after watching video'
puts 1234
thousands = 1234 / 1000
hundreds = 1234 % 1000 / 100
tens = 1234 % 100 / 10
ones = 1234 % 10

puts "thousands: #{thousands}"
puts "hundreds: #{hundreds}"
puts "tens: #{tens}"
puts "ones: #{ones}"
