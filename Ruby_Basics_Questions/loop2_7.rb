# The method below counts from 0 to 4. Modify the block so that it prints the
# current number and stops iterating when the current number equals 2.

# 5.times do |index|
  # ...
# end

5.times do |index| # NOTE when we use |variable| the value always starts at 0 and increase by 1 when used like this
  puts index
  break if index == 2
end
