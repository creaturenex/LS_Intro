# When the user inputs 10, we expect the program to print The result is 50!, but that's not the output we see. Why not?

def multiply_by_five(n)
  n * 5
end

puts "Hello! Which number would you like to multiply by 5?"
# number = gets.chomp
# any user input is a string and must be converted to an integer
number = gets.chomp.to_i

puts "The result is #{multiply_by_five(number)}!"
