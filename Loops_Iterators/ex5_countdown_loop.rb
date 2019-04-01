# countdown_loop.rb

x = gets.chomp.to_i

while x >= 0
  puts x
  x = x - 1
  # this step above can be refactored to x -= 1
  # refactored is the same as making into a smaller unit, just like in math
end

puts "Done!"
