# scope.rb

a = 5             # variable is initialized in the outer scope

3.times do |n|    # method invocation with a block
  a = 3           # is a accessible here, in an inner scope?
  b = 5           # b is initialized in the inner scope
end

puts a
puts b
# you will get an error when you get to "b"

# scope.rb:11:in `<main>': undefined local variable or method `b' for main:Object (NameError)

# This is because the variable "b" is not available outside of the method
# invocation with a block where it is initialized. (its outside of the 3.times...etc)
