# Exercise 5
# Write a program that outputs the factorial of the numbers 5, 6, 7, and 8.
# factors of 5 (Notice for a range you need to use parenthesis)
puts "Factors of 5"
i = (1..5)
i.each { |x| puts x if 5 % x == 0}

# factors of 6 (for an array you have brackets)
puts "Factors of 6"
i = [1,2,3,4,5,6]
i.each { |x| puts x if 6 % x == 0}

# factors of 7
puts "Factors of 7"
i = [1,2,3,4,5,6,7]
i.each { |x| puts x if 7 % x == 0}

# factors of 8
puts "Factors of 8"
i = [1,2,3,4,5,6,7,8]
i.each { |x| puts x if 8 % x == 0}
