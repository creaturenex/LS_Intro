# frozen_string_literal: true

# More_Stuff/Exercise_5.rb

# Why does the following code...
  # def execute(block)
    # block.call
  # end

# execute { puts "Hello from inside the execute method!" }

# Give us the following error when we run it?

# block.rb1:in `execute': wrong number of arguments (0 for 1) (ArgumentError)
# from test.rb:5:in `<main>'

puts "Code before watching video
The code above is missing the preceeding '&' which denotes that the following
argument is a block. As a result it is expecting 1 block, but it doesn't see
the argument as a block hence we get the (0 of 1) (ArgumentError)"
