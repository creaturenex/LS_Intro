# frozen_string_literal: true

# Final_Exercises/Exercise_13.rb

# Using the hash you created from the previous exercise, demonstrate how you
# would access Joe's email and Sally's phone number?

contact = { 'Joe Smith' => { email: 'joe@email.com',
                             address: '123 Main st.',
                             phone: '555-123-4567' },
            'Sally Johnson' => { email: 'sally@email.com',
                                 address: '404 Not Found Dr.',
                                 phone: '123-234-3454' } }

puts "Code before watching video"

puts contact['Joe Smith'][:email]
puts contact['Sally Johnson'][:phone]

puts "Code after watching video"
# This code just puts the data you pulled in a readable format this # is etc.
puts "Joe's email is: #{contacts["Joe Smith"][:email]}"
puts "Sally's phone number is: #{contacts["Sally Johnson"][:phone]}"
