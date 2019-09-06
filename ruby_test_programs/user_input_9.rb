# In an earlier exercise, you wrote a program that prints 'Launch School is the
# best!' repeatedly until a certain number of lines have been printed.
# Our solution looked like this:

# number_of_lines = nil
# loop do
  # puts '>> How many output lines do you want? Enter a number >= 3:'
  # number_of_lines = gets.to_i
  # break if number_of_lines >= 3
  # puts ">> That's not enough lines."
# end

# while number_of_lines > 0
  # puts 'Launch School is the best!'
  # number_of_lines -= 1
# end

# Modify this program so it repeats itself after each input/print iteration,
# asking for a new number each time through. The program should keep running
# until the user enters q or Q.

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

number_of_lines = nil

loop do
  puts '>> How many output lines do you want? Enter a number >= 3 (Q to quit):'
  number_of_lines = gets.chomp
  if valid_number?(number_of_lines) # execute below
    num_i = number_of_lines.to_i
    if num_i >= 3
      while num_i > 0
        puts 'Launch School is the best!'
        num_i -= 1
      end
    else
      puts ">> That's not enough lines."
    end
  else
    break if (number_of_lines == "Q") || (number_of_lines == "q")
  end
end
