# Modify the code below so that the user's input gets added to the numbers
# array. Stop the loop when the array contains 5 numbers.

numbers = []
x = 1
loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i
  numbers.push(input)
  x += 1
  if x > 5
    puts numbers
    break
  end
end
