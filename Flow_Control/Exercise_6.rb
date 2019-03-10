# Exercise 6

# When you run the following code...
# def equal_to_four(x)
#  if x == 4
#    puts 'yup'
#  else
#    puts 'nope'
#end

# equal_to_four(5)
# You get the following error message..
# exercise.rb:8: syntax error, unexpected end-of-input, expecting keyword_end

puts "Code before watching video"
puts "You get that error because you closed/ended the method definition, but did not closed/ended the if/else statement."

def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
  end
end

equal_to_four(5)
