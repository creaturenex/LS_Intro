# Rewrite car as a nested array containing the same key-value pairs.

car = { type:  'sedan', color: 'blue', year:  2003 }


cars = [[:type, 'sedan'], [:color, 'blue'], [:year, 2003]]

# NOTE: arrays can contain any data type hence we see symbols, strings, and
# integers in the array above. But these are arrays in that to get a value from
#  cars, I must use an Index value and not a Key value
# for example
# cars[0][1] for :type or
# cars[1][1] for 'blue'
