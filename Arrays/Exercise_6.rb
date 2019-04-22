# Exercise_6.rb

names = ['bob', 'joe', 'susan', 'margaret']
names['margaret'] = 'jody'

# ...and get the following error message:

# TypeError: no implicit conversion of String into Integer
#  from (irb):2:in `[]='
#  from (irb):2
#  from /Users/username/.rvm/rubies/ruby-2.0.0-p353/bin/irb:12:in `<main>'

# What is the problem and how can it be fixed?

puts "Code before watching video"

puts "We typed names['margaret'], this is an issue because in this format [] the
 program would be looking for the value from the provided index inside the
 brackets, but instead we provide the value of 'margaret' already"

puts "I corrected this by providing the index number for the value 'margaret',
 which then replaced 'margaret' with 'jody'"
