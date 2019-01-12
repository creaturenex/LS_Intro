# /Excercise_5

# What does x print to the screen in each case? Do they both give errors?
# Are the errors different? Why?
puts "I think the follow code will work as the inner scope (x+= 1) can access
the outer scope (x = 0)"

x = 0
3.times do
  x += 1
end
puts x
