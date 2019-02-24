# Exercise_4.rb

# What will the following code print to the screen?

puts "Code before watching video"
puts "I think the answer will be Yippeee!!!!"

def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yippeee")

puts "Code after watching video"
puts "When the method gets to the 'return' it will exit the method at that
point, anything after the 'return' will not be excuted. So that answer is
nothing will get displayed on the screen."
