# Arrays

An array is an ordered list of elements that can be of any type. You can define an array by placing a list of elements between brackets like so:

    irb :001 > [1, 'Bob', 4.33, 'another string']

You'll notice that the above array has strings, an integer, and a float. Arrays can have anything in them (even other arrays!). Now we need to save this array in a variable so we can play with it.

    irb :002 > array = [1, 'Bob', 4.33, 'another string']

We'd like to find the first element of the array. We can just use the `first` method. What about the last element?

    irb :003 > array.first
    => 1

    irb :004 > array.last
    => "another string"

But what if we want to find the third element?

Arrays are what we call indexed lists. That means that each slot in an array is numbered. You can reference any element by its index number. The syntax to do this is typing the array name with the index in brackets `[]` directly following. Let's try it out.

      irb :005 > array[3]

What would you expect the above code to return? Type it into irb and see what you get.

Are you surprised? You probably thought that you were going to get the number `4.33` back, but instead, you got `"another string"`. That's because all array indices start with the number `0`. Try this in irb.

    irb :006 > array[2]
    => 4.33

## Modifying arrays

Let's say you wanted to add or remove something from an array. There are a few methods that will help you perform these operations.

If you'd like to take the last item off of an array permanently, you can use the `pop` method.

    irb :007 > array.pop
    => "another string"
    irb :008 > array
    => [1, "Bob", 4.33]

Note that when we called the `pop` method, the original `array` variable was modified (ie, this is a method that mutates the caller), but the returned value is the popped element, as shown in the first line above. This is a critical distinction to understand. Make sure you distinguish between the returned value by an expression, and what the expression is actually doing.

If you'd like to add that item back to the array permanently, you can use the `push` method and send it the parameters you'd like to add.

    irb :009 > array.push("another string")
    => [1, "Bob", 4.33, "another string"]

Another way to do the above would be with the shovel operator (`<<`).    

    irb :010 > array.pop
    => "another string"
    irb :011 > array << "another string"
    => [1, "Bob", 4.33, "another string"]

Both the push and the `<<` methods mutate the caller, so the original array is modified.

Often you'll have an array and you'll want to operate on many of the elements in the array the same way. Ruby has many methods that do these type of operations.

The `map` method iterates over an array applying a block to each element of the array and returns a new array with those results. The irb session below shows how to use `map` to get the square of all numbers in an array. The `collect` method is an alias to `map` - they do the same thing.

    irb :001 > a = [1, 2, 3, 4]
    => [1, 2, 3, 4]
    irb :002 > a.map { |num| num**2 }
    => [1, 4, 9, 16]
    irb :003 > a.collect { |num| num**2 }
    => [1, 4, 9, 16]
    irb :004 > a
    => [1, 2, 3, 4]

You'll notice that after performing these methods there is no change to the initial array. These methods are not destructive (i.e., they don't mutate the caller). How do you know which methods mutate the caller and which ones don't? You have to use the methods and pay attention to the output in irb; that is, you have to memorize or know through using it.

The `delete_at` method can be helpful if you'd like to eliminate the value at a certain index from your array. You'll want to be careful with this one, because it modifies your array destructively. Once you call this method, you are changing your array permanently.

    irb :005 > a.delete_at(1)
    => 2
    irb :006 > a
    => [1, 3, 4]

As a side note, sometimes you will know the value that you want to delete, but not the index. In these situations you will want to use the `delete` method. The `delete` method permanently deletes all instances of the provided value from the array.    

    irb :007 > my_pets = ["cat", "dog", "bird", "cat", "snake"]
    => ["cat", "dog", "bird", "cat", "snake"]
    irb :008 > my_pets.delete("cat")
    => "cat"
    irb :009 > my_pets
    => ["dog", "bird", "snake"]

Another useful method is the `uniq` method. This iterates through an array, deletes any duplicate values that exist, then returns the result as a new array.

    irb :010 > b = [1, 1, 2, 2, 3, 3, 4, 4]
    => [1, 1, 2, 2, 3, 3, 4, 4]
    irb :011 > b.uniq
    => [1, 2, 3, 4]
    irb :012 > b
    => [1, 1, 2, 2, 3, 3, 4, 4]

## **Iterating Over an Array**

 The `select` methods iterates over an array and returns a new array that includes any items that return `true` to the expression provided.

    irb :001 > numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    irb :002 > numbers.select { |number| number > 4 }
    => [5, 6, 7, 8, 9, 10]
    irb :003 > numbers
    => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

The select method selects all of the numbers that are greater than 4 and returns them in an array. It does not mutate the caller (the original numbers array is unmodified).

## Methods With a !

The bang suffix (`!`) at the end of the method name usually indicates that the method will change (or mutate) the caller permanently. Unfortunately this is not always the case. It is a good rule to be wary of any method that has the bang suffix and to make sure to check the Ruby documentation to see if it will behave destructively (the word "destructive" here just means mutating the caller).

Also, please note that there are methods like `pop` and `push` that are destructive, but do not have a `!` at the end.

## Mutating the Caller: The Sequel

We talked about mutating the caller earlier, and we created an example to go along with it. But we think this concept is so important that we wanted to cover it in even more depth. It's important to keep this concept in mind, because it is possible that you could send an argument to a method and change that argument forever without knowing it. This can be a major source of confusion. That's why it's important to know what a method is doing to its arguments and to know what that method returns.

We also wanted to revisit destructive methods within the context of using a method. Look at the two methods below and see if you can decipher why the first method mutates the caller, but the second one doesn't.

    def mutate(arr)
      arr.pop
    end

    def not_mutate(arr)
      arr.select { |i| i > 3 }
    end

    a = [1, 2, 3, 4, 5, 6]
    mutate(a)
    not_mutate(a)

    puts a

The last line will output 1, 2, 3, 4, and 5. The mutate method performed a destructive action (i.e., pop) on its argument, thereby modifying the a array, even though a was initialized outside of the method. Therefore, the 6 element was popped out of the original array. The not_mutate method performed a non-destructive action (i.e., select), and therefore the original variable was unmodified.

## Nested Arrays

**Clean up info after this point**

We talked earlier about arrays being able to contain anything. You can also create arrays with arrays inside of them. Let's say you were having a sand volleyball tournament and wanted to keep track of all of the teams that were playing. You might create an array like this.

irb :001 > teams = [['Joe', 'Steve'], ['Frank', 'Molly'], ['Dan', 'Sara']]
=> [["Joe", "Steve"], ["Frank", "Molly"], ["Dan", "Sara"]]
Then you could find the teams by index.

irb :002 > teams[1]
=> ["Frank", "Molly"]
You could also have an array of hashes too! We won't get into too many crazy examples here, but play around with it in irb.

Comparing Arrays
You can compare arrays for equality using the == operator.

irb :001 > a = [1, 2, 3]
=> [1, 2, 3]
irb :002 > b = [2, 3, 4]
=> [2, 3, 4]
irb :003 > a == b
=> false
irb :004 > b.pop
=> 4
irb :005 > b.unshift(1)
=> [1, 2, 3]
irb :006 > a == b
=> true
You'll notice that we used the unshift method in this example. You can think of this as the opposite of the pop method. The pop method takes the last item off the list. The unshift method adds the arguments that you specify to the front of the list.

to_s
The to_s method is used to create a string representation of an array. Ruby does this behind the scenes when you use string interpolation to print an array to the screen.

irb :001 > a = [1, 2, 3]
=> [1, 2, 3]
irb :002 > "It's as easy as #{a}"
=> "It's as easy as [1, 2, 3]"
In order to get our array to print properly, Ruby is calling the to_s method on our array and adding it into the string.

Common Array Methods
This section will introduce you to some common methods that Ruby has built-in to its Array class. You should bookmark that documentation page as it's probably something you'll want to refer to often.

include?
The include? method checks to see if the argument given is included in the array. It has a question mark at the end of it which usually means that it will return a boolean value. Just like the methods that end in a "!", this is strictly by convention only and not a property of the language.

irb: 001 > a = [1, 2, 3, 4, 5]
=> [1, 2, 3, 4, 5]
irb: 002 > a.include?(3)
=> true
irb: 003 > a.include?(6)
=> false
flatten
The flatten method can be used to take an array that contains nested arrays and create a one-dimensional array.

irb: 001 > a = [1, 2, [3, 4, 5], [6, 7]]
=> [1, 2, [3, 4, 5], [6, 7]]
irb: 002 > a.flatten
=> [1, 2, 3, 4, 5, 6, 7]
Is the flatten method destructive? Find out for yourself in either irb, or by consulting the Array documentation.

each_index
The each_index method iterates through the array much like the each method, however the variable represents the index number as opposed to the value at each index. It passes the index of the element into the block and you may do as you please with it. The original array is returned.

irb: 001 > a = [1, 2, 3, 4, 5]
=> [1, 2, 3, 4, 5]
irb: 002 > a.each_index { |i| puts "This is index #{i}" }
This is index 0
This is index 1
This is index 2
This is index 3
This is index 4
=> [1, 2, 3, 4, 5]
each_with_index
Another useful method that works in a similar way to each_index is each_with_index.

irb: 001 > a = [1, 2, 3, 4, 5]
=> [1, 2, 3, 4, 5]
irb: 002 > a.each_with_index { |val, idx| puts "#{idx+1}. #{val}" }
1. 1
2. 2
3. 3
4. 4
5. 5
=> [1, 2, 3, 4, 5]
each_with_index gives us the ability to manipulate both the value and the index by passing in two parameters to the block of code. The first is the value and the second is the index. You can then use them in the block.

sort
The sort method is a handy way to order an array. It returns a sorted array.

irb :001 > a = [5, 3, 8, 2, 4, 1]
=> [5, 3, 8, 2, 4, 1]
irb :002 > a.sort
=> [1, 2, 3, 4, 5, 8]
Once again, test in irb to see if the sort method is destructive. (It's not, but test it out for yourself.) We won't remind you to test this in the future, but when you see methods like this in the future, ask yourself "is this method returning new data, or is the original data being modified?".

product
The product method can be used to combine two arrays in an interesting way. It returns an array that is a combination of all elements from all arrays.

irb :001 > [1, 2, 3].product([4, 5])
=> [[1, 4], [1, 5], [2, 4], [2, 5], [3, 4], [3, 5]]
There are too many interesting methods to cover, but we wanted to give you a taste of the power of Ruby arrays and the many handy methods that come built-in with Ruby. If you ever think "I want my array to...", there is probably a method that already does this. First, check the documentation.

each vs map
each
each provides a simple way of iterating over a collection in Ruby and is more preferred to using the for loop. The each method works on objects that allow for iteration and is commonly used along with a block. If given a block, each runs the code in the block once for each element in the collection and returns the collection it was invoked on. If no block is given, it returns an Enumerator. Let's look at some simple examples:

a = [1, 2, 3]
a.each { |e| puts e }

# Outputs
1
2
3
=> [1, 2, 3]
The above shows the commonest way of using each. We're iterating over each element on the array a and printing it out. Finally it returns [1, 2, 3].

We can also modify the elements in a and print them out:

a = [1, 2, 3]
a.each { |e| puts e + 2 }

# Outputs
3
4
5
=> [1, 2, 3]
Again, we print out the modified values and return the original collection a.

Here is a final example with no block; an Enumerator is returned:

a = [1, 2, 3]
a.each
=> #<Enumerator: ...>
map
map also works on objects that allow for iteration. Like each, when given a block it invokes the given block once for each element in the collection. Where it really differs from each is the returned value. map creates and returns a new array containing the values returned by the block. Let's see it in action:

a = [1, 2, 3]
a.map { |x| x**2 }
=> [1, 4, 9]
We square each element in the block and create a new array containing the returned values by the block. Finally the new array is returned.

To really examine that map creates a new array consisting of the returned value of the block, let's see an example with map and puts:

a = [1, 2, 3]
a.map { |x| puts x**2 }
=> [nil, nil, nil]
Because puts returns nil every time the block is invoked nil is returned which makes up the values in the newly created returned array.

Finally, if no block is given, map returns an Enumerator:

a = [1, 2, 3]
a.map
#<Enumerator: ...>
each and map are important methods to know but can be quite confusing in the beginning. Another way to remember these methods: use each for iteration and map for transformation.

Summary
Arrays are an extremely valuable data set. They can be used to store many different kinds of data and you'll see them very often in the wild. Ruby's array class has lots of built-in methods that can be used to perform many of the daily functions that programmers use. Let's practice working with arrays for a bit with some exercises.
