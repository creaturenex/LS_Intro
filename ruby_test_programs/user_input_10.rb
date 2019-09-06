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

a = nil
b = nil

loop do
  puts 'Please enter a positive or negative integer:'
  a = gets.chomp
  puts 'Please enter a positive or negative integer:'
  b = gets.chomp
  if ( a.to_i == 0 ) || ( b.to_i == 0 )
    puts 'Invalid input. Only non-zero integers are allowed.'

  elsif a.to_i.positive? && b.to_i.positive? || a.to_i.negative? && b.to_i.negative?
    puts 'Sorry. One integer must be positive, one must be negative.'
    puts 'Please start over.'
  end
  break if ( ( valid_number?(a) ) && ( valid_number?(b) ) ) && ( ( a.to_i.positive? && b.to_i.negative? ) || ( a.to_i.negative? && b.to_i.positive? ) )
  end

  result = a.to_i + b.to_i
  puts "#{a} + #{b} is #{result}"
