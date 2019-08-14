# Final_Exercises/Exercise_2.rb

# Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# but only print out values greater than 5.

puts "Code before watching video"

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

array.each {|i| puts i if i >= 5 }
#{ |i| puts i >= 5 } I originally had it like this with no 'if' so it put the
# boolean value only for all items in array.

array.each do |i|
  # after watching video I will write out blocks in both way for practice.
  if i >= 5
    puts i
  end
end
