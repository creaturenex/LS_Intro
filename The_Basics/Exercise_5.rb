# Exercise 5
# Write a program that outputs the factorial of the numbers 5, 6, 7, and 8.
# My code is wrong I put factors not factorial
# factors of 5 (NOTE: for a range you need to use parentheses)
puts 'Incorrect code before watching video, it finds factors not factorial'
puts 'Factors of 5'
i = (1..5)
i.each { |x| puts x if 5 % x == 0 }

# factors of 6 (for an array you have to use brackets)
puts 'Factors of 6'
i = [1, 2, 3, 4, 5, 6]
i.each { |x| puts x if 6 % x == 0 }

puts 'Factors of 7'
i = [1, 2, 3, 4, 5, 6, 7]
i.each { |x| puts x if 7 % x == 0 }

puts 'Factors of 8'
i = [1, 2, 3, 4, 5, 6, 7, 8]
i.each { |x| puts x if 8 % x == 0 }

puts 'Correct code after watching video, it finds factorial'
puts 'factorial for 5'
puts 5 * 4 * 3 * 2 * 1
puts 'factorial for 6'
puts 6 * 5 * 4 * 3 * 2 * 1
puts 'factorial for 7'
puts 7 * 6 * 5 * 4 * 3 * 2 * 1
puts 'factorial for 8'
puts 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1
