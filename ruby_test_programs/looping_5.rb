# frozen_string_literal: true

# Modify the code below so "Hello!" is printed 5 times.

# say_hello = true

# while say_hello
# puts 'Hello!'
# say_hello = false
# end

say_hello = true
x = 0
while say_hello
  puts 'Hello!'
  x += 1
  say_hello = false if x >= 5
end
