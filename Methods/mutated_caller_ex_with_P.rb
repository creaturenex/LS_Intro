# mutated_caller_example_with_P.rb

a = [1,2,3]

def mutate(array)
  array.pop
end

p "Before mutate method: #{a}"
p mutate(a)
p "after mutate #{a}"
