# Final_Exercises/Exercise_3.rb

# Now, using the same array from #2, use the select method to extract all odd numbers into a new array.

puts "Code before watching video"

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

array.select {|i| puts i if i%2 != 0 }
# I forgot to add the selected items into a new array. Which was pointed out in
# the video

array.select do |i|
  if i%2 != 0
    puts i
  end
end

puts "Code after watching video"

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_array = array.select {|i| i%2 != 0 }
# I forgot to add the selected items into a new array. Which was pointed out in
# the video

new_array = array.select do |i|
  i%2 != 0
end

print new_array # was added to see if the correct values were selected

puts "another method"

odd_array = array.select {|i| i.odd?}
# '.select' returns a new_array containing the elements from the source array
# for which the given block returns true.

print odd_array
