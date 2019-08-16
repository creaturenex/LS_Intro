# Final_Exercises/Exercise_14.rb

# In exercise 12, we manually set the contacts hash values one by one.
# Now, programmatically loop or iterate over the contacts hash from exercise
# 12, and populate the associated data from the contact_data array.

# Hint: you will probably need to iterate over ([:email, :address, :phone]),
# and some helpful methods might be the Array shift and first methods.

# Array.shift
# '.shift' method will retrieve and at the same time removes the first item.
# arr = [1, 2, 3, 4, 5]
# arr.shift
# => 1
# puts arr
# arr = [2, 3, 4, 5]

# Array.first
# '.first' method will return the first the elements of an array.
# arr = [1, 2, 3, 4, 5]
# arr.first #=> 1


Note that this exercise is only concerned with dealing with 1 entry in the contacts hash, like this:
As a bonus, see if you can figure out how to make it work with multiple entries in the contacts hash.
# contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
# contacts = {"Joe Smith" => {}}



contact_data = [['joe@email.com', '123 Main st.', '555-123-4567'],
                ['sally@email.com', '404 Not Found Dr.', '123-234-3454']]
# this is an Array

contacts = { 'Joe Smith' => {}, 'Sally Johnson' => {} }
# this is a Hash


what does array shift do?
  array first do?

labels = [ :email, :address, :phone ]

contacts.each { |key| contacts[key][labels[0-2]] = contact_data[0][0-2] }
