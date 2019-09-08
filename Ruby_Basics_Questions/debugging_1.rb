# You come across the following code. What errors does it raise for the given examples and what exactly do the error messages mean?

def find_first_nonzero_among(numbers)
  numbers.each do |n|
    return n if n.nonzero?
  end
end

# Examples

find_first_nonzero_among(1)

find_first_nonzero_among(0, 0, 1, 0, 2, 0) wrong number of arguments (given 6, expected 1) (ArgumentError) In the method definition we only defined one argument with no optional parameters

find_first_nonzero_among(1) undefined method `each' for 1:Integer (NoMethodError) In the method definition we are using the each method, but that is not appropriate method for an integer
