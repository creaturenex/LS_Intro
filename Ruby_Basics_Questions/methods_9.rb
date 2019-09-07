# Write the following methods so that each output is true.

# puts add(2, 2) == 4
# puts add(5, 4) == 9
# puts multiply(add(2, 2), add(5, 4)) == 36

def add(x,y)
  x + y
end

def multiply(x,y)
  x * y
end

puts add(2, 2)
puts add(5, 4)
puts multiply(add(2, 2), add(5, 4))
