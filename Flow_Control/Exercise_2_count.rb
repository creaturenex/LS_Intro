# Excercise_2

# Write a method that takes a string as argument.
# The method should return a new, all-caps version of the string,
# only if the string is longer than 10 characters.
# Example: change "hello world" to "HELLO WORLD".
# (Hint: Ruby's String class has a few methods that would be helpful.
# Check the Ruby Docs!)

def supersize(words)
  if words.count >= 10
    puts words.upcase
  elsif words.count < 10
    puts "Word too short! Use a longer word!"
  end
end

supersize("Ozzy Osbourne")
supersize("Bug")
