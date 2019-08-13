# frozen_string_literal: true

# More_Stuff/Exercise_1.rb

# Write a program that checks if the sequence of characters "lab" exists in the
# following strings. If it does exist, print out the word.

# "laboratory"
# "experiment"
# "Pans Labyrinth"
# "elaborate"
# "polar bear"

puts 'Code before watching video'

words = ['laboratory',
         'experiment',
         'Pans Labyrinth',
         'elaborate',
         'polar bear']

words.each do |words|
  if words =~ /lab/
    puts words + " does contain 'lab' in the word"
  elsif words =~ / Lab/ # added because top line did not find Pans Labyrinth
# after watching the video I learn to add "i" to make it case insensitive,
# meaning it doesnt matter if the upper or lower case.
    puts words + " does contain 'lab' in the word"
  else
    puts 'Error, ' + words + " does not contain 'lab' in the word"
  end
end

puts 'Code after watching video'

def check_in(words)
  if /lab/i =~ words
    puts words
  else
    puts "No match"
  end
end

check_in('laboratory')
check_in('experiment')
check_in('Pans Labyrinth')
check_in('elaborate')
check_in('laboratory')
check_in('polar bear')
