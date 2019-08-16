# frozen_string_literal: true

# Final_Exercises/Exercise_16.rb

# Take the following array:

a = ['white snow',
     'winter wonderland',
     'melting ice',
     'slippery sidewalk',
     'salted roads',
     'white trees']

# and turn it into a new array that consists of strings containing one word.
# (ex. ["white snow", etc...] → ["white", "snow", etc...].
# Look into using Array's map and flatten methods, and String's split method.

puts "Code before watching video"

a_new = a.map { |words| words.split(" ") }
# ".map is creating a new array based on the orginal array but with the
# modified values"
a_new_flat = a_new.flatten
p a_new_flat

puts "Code after watching video"

a = a.map { |pairs| pairs.split } # this is default split
# used the same array name and did not specific split
# default split will split the non leading/trailing whitespace
a = a.flatten
p a
