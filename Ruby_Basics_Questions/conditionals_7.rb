# frozen_string_literal: true

# In the code below, stoplight is randomly assigned as
# 'green', 'yellow', or 'red'.

# stoplight = ['green', 'yellow', 'red'].sample

# Write a case statement that prints "Go!"
# if stoplight equals 'green', "Slow down!"
# if stoplight equals 'yellow', and
# "Stop!" if stoplight equals 'red'.

# stoplight = ['green', 'yellow', 'red'].sample
# if stoplight == 'green'
  # puts 'Go!'
# elsif stoplight == 'yellow'
  # puts 'Slow down!'
# elsif stoplight == 'red'
  # puts 'Stop!'
# end

stoplight = ['green', 'yellow', 'red'].sample

case stoplight
when stoplight = 'green'
  puts 'Go!'
when stoplight = 'yellow'
  puts 'Slow down!'
when stoplight = 'red'
  puts 'Stop!'
end
