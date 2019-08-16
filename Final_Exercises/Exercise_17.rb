# frozen_string_literal: true

# Final_Exercises/Exercise_17.rb

# What will the following program output?

puts "Code before watching video

I think the output will be 'These hashes are the same!' as both hashes contain
the same key: value pair"

hash1 = { shoes: 'nike', 'hat' => 'adidas', :hoodie => true }
hash2 = { 'hat' => 'adidas', :shoes => 'nike', hoodie: true }

if hash1 == hash2
  puts 'These hashes are the same!'
else
  puts 'These hashes are not the same!'
end
