# frozen_string_literal: true

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

number_of_lines = nil

loop do
  puts '>> How many output lines do you want? Enter a number >= 3 (Q to quit):'
  number_of_lines = gets.chomp
  if valid_number?(number_of_lines)
    num_i = number_of_lines.to_i
    if num_i >= 3
    while num_i > 0
      puts 'Launch School is the best!'
      num_i -= 1
    end
    else
      puts ">> That's not enough lines."
    end
  elsif
break number_of_lines == 'Q'
  end
end
