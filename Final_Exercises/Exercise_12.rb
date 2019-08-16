# frozen_string_literal: true

# Final_Exercises/Exercise_12.rb

# Given the following data structures. Write a program that moves the
# information from the array into the empty hash that applies to the correct
# person.

contact_data = [['joe@email.com', '123 Main st.', '555-123-4567'],
                ['sally@email.com', '404 Not Found Dr.', '123-234-3454']]

contacts = { 'Joe Smith' => {}, 'Sally Johnson' => {} }

puts 'Code before watching video, see code comments'
# this accomplishes the goal of the exercise but the solution trafter the data
# as a hash
# contacts['Sally Johnson'] = contact_data[1][0..2]
# contacts['Joe Smith'] = contact_data[0][0..2]
# puts contacts

puts 'Code after watching video'
# Why does this not work?
# Traceback (most recent call last):
# 1: from /home/oscar/LS_Intro/Final_Exercises/Exercise_12.rb:22:in # `<main>'
# /home/oscar/LS_Intro/Final_Exercises/Exercise_12.rb:22:in `[]=': wrong number
# of arguments (given 4, expected 2) (ArgumentError)

# contacts['Sally Johnson'][:email, :address, :phone] = contact_data[1][0..2]
# contacts['Joe Smith'][:email, :address, :phone] = contact_data[0][0..2]
contacts['Joe Smith'][:email] = contact_data[0][0]
contacts['Joe Smith'][:address] = contact_data[0][1]
contacts['Joe Smith'][:phone] = contact_data[0][2]
contacts['Sally Johnson'][:email] = contact_data[1][0]
contacts['Sally Johnson'][:address] = contact_data[1][1]
contacts['Sally Johnson'][:phone] = contact_data[1][2]
puts contacts
