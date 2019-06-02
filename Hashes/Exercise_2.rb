# Hashes/Exercise_2

# Look at Ruby's merge method. Notice that it has two versions.
# What is the difference between merge and merge!?
# Write a program that uses both and illustrate the differences.

puts "Code before watching Video
Merge
Returns  new hash containing the contents of other_hash and the contents of
hsh.

Makes a new hash by combining two different hashes

Merge! (this is a distructive meathod)
Adds the contents of other_hash to hsh. If no block is specified, entries with
duplicate keys are overwritten with the values from other_hash.

Makes a new hash by combining two different hashes, but overwrites one of the
hashes used to create it and permenantly changes it to the new merged Hash
"

h1 = {mammal: "dog", avian: "hawk", fish: "shark"}
h2 = {car: "ford" , plane: "f18", boat: "titanic"}

h3 = {mammal: "dog", avian: "hawk", fish: "shark"}
h4 = {car: "ford", plane: "f18", boat: "titanic"}

puts h1.merge(h2)
puts h1

puts h3
h3.merge!(h4)
puts h3
