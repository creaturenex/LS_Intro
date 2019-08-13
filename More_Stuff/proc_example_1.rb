# More_Stuff/proc_example_1.rb

talk = Proc.new do
  puts "I am talking."
end

talk.call
