# Exercise_2

# What will the following programs return? What is value of arr after each

puts "I did not understand this, had to refer to the video, but once look at it
 and taking my time to write it out i saw what each product generated"

1. arr = ["b", "a"]
   arr = arr.product(Array(1..3)) # this one is in parenthesis
   arr.first.delete(arr.first.last)

puts "Array(1..3) is the same as [1,2,3]
remember Arrays are made with brackets[]
series use dots .. or ...
.. means all intergers are included
... mean all interger up to but not incluing last value
so [b, a] product [1,2,3] equals [[b,1],[b,2],[b,3],[a,1],[a,2],[a,3]]

"


2. arr = ["b", "a"]
   arr = arr.product([Array(1..3)]) # this one is in brackets
   arr.first.delete(arr.first.last)

   puts "[Array(1..3)] is the same as [[1,2,3]] its an array of 1 element with 3 items in that element
   so [b, a] product [[1,2,3]] equals [[b,[1,2,3]], [a,[1,2,3]]]
   "
