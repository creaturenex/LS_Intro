# frozen_string_literal: true

# Final_Exercises/Exercise_9.rb

# Suppose you have a hash h = {a:1, b:2, c:3, d:4}

# 1. Get the value of key `:b`.

# 2. Add to this hash the key:value pair `{e:5}`

# 3. Remove all key:value pairs whose value is less than 3.5

puts 'Code before watching video'

h = { a: 1, b: 2, c: 3, d: 4 }

puts h
puts '1)'
puts h[:b]
h[:e] = 5
puts '2)'
puts h
puts '3)'
h.each { |k, v| h.delete k if v < 3.5 }
puts h

puts 'Code after watching video'

puts '3) After looking at solution'
# one line version
h.delete_if { |_k, v| v < 3.5 }
# this will delete the key:value pair if the code returns TRUE
# multi-line version
h.delete_if do |_k, v|
  v < 3.5
end
