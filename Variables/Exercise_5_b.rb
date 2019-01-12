# /Excercise_5

# What does x print to the screen in each case? Do they both give errors?
# Are the errors different? Why?
puts "I think the follow code will not work as the outer scope (puts x) cannot
access the inner scope (x = y)"

y = 0
3.times do
  y += 1
  x = y
end
puts x
