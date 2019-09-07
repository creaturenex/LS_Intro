def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

number_of_lines = nil

loop do
  puts ">> How many output lines do you want? Enter a number >= 3 (Q to quit):"
  number_of_lines = gets.chomp
  if valid_number?(number_of_lines)
    num_i = number_of_lines.to_i
    p num_i
    puts num_i
  else
    puts "did not work"
  end
  p number_of_lines
  puts number_of_lines
end
