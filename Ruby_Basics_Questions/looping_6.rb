# frozen_string_literal: true

# Using a while loop, print 5 random numbers between 0 and 99. The code below
# shows an example of how to begin solving this exercise.

numbers = []
p numbers
x = 2
while x <= 7
  a = ( x**2 + 7 )
  numbers.push(a)
  x += 1
end

p numbers
# array.push(what you are adding)
