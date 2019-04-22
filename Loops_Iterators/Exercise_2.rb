# Exercise_2.rb

# Write a while loop that takes input from the user, performs an action, and
# only stops when the user types "STOP". Each loop can get info from the user.

puts "code before watching video"

puts "Do you want to party?!? Tell me your name, you know you want to! (^-^)"
name = gets.chomp
x = 6
while x > 0
  puts "#{name} wants to party all the time!!!!"
  puts "PARTY ALL THE TIME!!!"
  puts "PARTYYYYYY ALLLLL THE TIMEEEEEEEEEE!!!!"
  puts "Do you want to do that again?"
  answer = gets.chomp
  if answer == 'STOP'
    break
  else
    x -=1
  end
end



# LS example
# x = ""
# while x != "STOP" do            <<this will make the program run indefinitely
  # puts "Hi, How are you feeling?"
  # ans = gets.chomp
  # puts "Want me to ask you again?"
  # x = gets.chomp
# end
