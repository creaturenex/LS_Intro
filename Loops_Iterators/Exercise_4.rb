# Exercise 4

# Write a method that counts down to zero using recursion.

puts "Code before watching video"

def countdown(x)
  if x > 0
    puts x
    countdown(x - 1)
  elsif x = 0
    puts x
  elsif x < 0
    puts "No negative values"
  end
end

puts countdown(10)
# my code doesn't include negative values as the exercise said count DOWN to zero.


puts "code after watching video"

def count_to_zero(number)
  if number <= 0
    puts number
  else
    puts number
    count_to_zero(number-1)
  end
end

count_to_zero(10)
count_to_zero(20)
count_to_zero(-3)
