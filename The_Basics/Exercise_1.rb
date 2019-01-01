# Excercise 1
# Add two strings together that, when concatenated, return your first and last name as your full name in one string.
first_name = "Oscar"
last_name = "Romero"

# String concatenation
puts "Code before watching video"
puts first_name + " " + last_name
# or
# String interpolation
puts "#{first_name} #{last_name}"
# NOTE: There is a space between the variables. String interpolation only works with double quotes

# If I just concatenation with no additional (" ")
# puts first_name + last_name
# the result would be => OscarRomero
# I could concatenation like example above if first_name = "Oscar "
# notice the extra space
