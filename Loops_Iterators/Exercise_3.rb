# Exercise_3.rb

# Use the each_with_index method to iterate through an array of your creation
# that prints each index and value of the array.

puts "Code before watching video"

fib = [1,1,2,3,5,8]

fib.each_with_index {|x, y|
    puts "#{x}, #{y}"} # the excercise ask for index, value so I should have swap these
# my code is fine, its just a different way, also they added "1" to each index
# value so the list would not start at "0"



puts "Code after watching video"

top_five_games = ["mario brothers",
                 "excite bike",
                 "ring king",
                 "castlevania",
                 "double dragon"]

top_five_games.each_with_index do | game, index |
 puts "#{index + 1}. #{game}"
end
