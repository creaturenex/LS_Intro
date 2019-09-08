# We want to iterate through the numbers array and return a new array containing only the even numbers. However, our code isn't producing the expected output. Why not? How can we change it to produce the expected result?

# numbers = [5, 2, 9, 6, 3, 1, 8]

# even_numbers = numbers.map do |n|
  # n if n.even?
# end

# p even_numbers # expected output: [2, 6, 8]

numbers = [5, 2, 9, 6, 3, 1, 8]

# even_numbers = numbers.map{|n| n if n.even?}
# The map method is going through all the values in the array,
# as a result it also returns the nil value when the expression is false
even_numbers = numbers.select{|n| n if n.even?}
# the select method is only selecting a value if true.
p even_numbers
