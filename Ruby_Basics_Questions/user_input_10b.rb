# Write a program that requests two integers from the user, adds them
# together, and then displays the result. Furthermore, insist that one of
# the integers be positive, and one negative; however, the order in which
# the two integers are entered does not matter.

# Do not check for the positive/negative requirement until both integers are
# entered, and start over if the requirement is not met.

# You may use the following method to validate input integers:

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end
# this is saying our input from the user, which is always a string can be converted to a integer, then back to a string without issues.
# example that words I type "9"(which is a string), .to_i makes converts it to integer 9, then .to_s converts that integer back to a string which is "9".

a = nil
b = nil

loop do
  puts 'Please enter a positive or negative integer:'
  a = gets.chomp
  if (a.to_i == 0)
    puts 'Invalid input. Only non-zero integers are allowed.'
  end

  puts 'Please enter a positive or negative integer:'
  b = gets.chomp
  if (b.to_i == 0)
    puts 'Invalid input. Only non-zero integers are allowed.'
  end
  break if (valid_number?(a)) && (valid_number?(b))
end

while (valid_number?(a)) && (valid_number?(b))
  if a.postive? && b.negative? || b.postive? && a.negative?
  #ok
    result = a.to_i + b.to_i
    puts "#{a} + #{b} is #{result}"
  else
    puts 'Sorry. One integer must be positive, one must be negative.'
    puts 'Please start over.'
  end
end
