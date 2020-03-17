loop do
  puts 'This is the outer loop.'

  loop do
    puts 'This is the inner loop.'
    break
  end
  break
end

puts 'This is outside all loops.'

# Mar 17 2020
# this does the same as above but removes the loop.method which is point of the exercise
a = 0

until a == 1
  puts 'This is the outer loop.'
  until a == 1
    puts 'This is the inner loop.'
    a += 1
  end
end

puts 'This is outside all loops.'
