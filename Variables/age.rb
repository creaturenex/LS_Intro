# age.rb

puts 'How old are you?'
age = gets.to_i
puts 'In 10 years you will be:'
puts age + 10
puts 'In 20 years you will be:'
puts age + 20
puts 'In 30 years you will be:'
puts age + 30
puts 'In 40 years you will be:'
puts age + 40

# When I first wrote my code I got an error, as I only had "gets.chomp".
# I had to convert the user input from a string to an interger.
# "to_i" accomplished this, but the post I read said the ".chomp" is redundant.
# So I removed it from my code.
# I was going to add ".to_i" after gets.chomp
