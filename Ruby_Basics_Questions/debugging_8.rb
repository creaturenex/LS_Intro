# The following code throws an error. Find out what is wrong and think about how you would fix it.

colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 'turquoise', 'silver', 'black']
# Has 8 items
things = ['pen', 'mouse pad', 'coffee mug', 'sofa', 'surf board', 'training mat', 'notebook']
# Has 7 items, as this is shorter, used this one for break condition
colors.shuffle!
things.shuffle!

i = 0
loop do
  break if i > colors.length
  # this was causing an error because we were trying to say colors[8] which does not not exist as the array start at 0,
  # hence the minus 1.  In addition things is the shorter array.
  break if i > things.length - 1

  if i == 0
    puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
  else
    puts 'And a ' + colors[i] + ' ' + things[i] + '.'
  end

  i += 1
end
