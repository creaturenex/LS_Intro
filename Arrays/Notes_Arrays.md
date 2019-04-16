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





### Controlling Loop Execution

You'll hardly do something like this in a real program as it's not very useful and will result in an infinite loop. Eventually your system will crash.

Let's look at a more useful example with the `break` keyword by creating a file named useful_loop.rb:

    Example of a useful loop

    execute the following file

    # useful_loop.rb

## While Loops

A **while loop** is given a parameter that evaluates to a boolean (remember, that's just `true` or `false`). Once that boolean expression becomes `false`, the while loop is not executed again, and the program continues after the while loop. Code within the while loop can contain any kind of logic that you would like to perform.

We want this program to countdown from any number given by the user and print to the screen each number as it counts.

    Example of a while loop

    execute the following file

    # countdown_loop.rb

## Until Loops

The until loop is simply the opposite of the while loop. You can substitute it in order to phrase the problem in a different way.

There are instances when using until will allow you to write code that is more readable and logical. Ruby has many features for making your code more expressive. The until loop is one of those features.

    Example of a until loop

    execute the following file

    # countdown_until_loop.rb

## Do/While Loops

A do/while loop works in a similar way to a while loop; one important difference is that the code within the loop gets executed one time, prior to the conditional check to see if the code should be executed. In a "do/while" loop, the conditional check is placed at the end of the loop as opposed to the beginning.

The following code is a classic use case for a "do/while", because we want to repeatedly perform an action based on some condition, but we want the action to be executed at least one time no matter what.

    Example of a do/while loop

    execute the following file

    # perform_again_loop.rb

Ruby also allows Do/While loops to be constructed as, it is not the preferred method.

    begin
      puts "Do you want to do that again?"
        answer = gets.chomp
      end while answer == 'Y'

## For Loops

In Ruby, for loops are used to loop over a collection of elements. Unlike a while loop where if we're not careful we can cause an infinite loop, for loops have a definite end since it's looping over a finite number of elements. It begins with the `for` reserved word, followed by a variable, then the `in` reserved word, and then a collection of elements. We'll show this using an array and a range. A range is a special type in Ruby that captures a range of elements. For example `1..3` is a range that captures the integers `1`, `2`, and `3`.

    Example of a for loop

    execute the following file

    # countdown3_for_loop.rb

The odd thing about the for loop is that the loop returns the collection of elements after it executes, whereas the earlier while loop examples return nil. Let's look at another example using an array instead of a range.

    Example of a for loop

    execute the following file

    # countdown4_for_loop.rb

## Conditionals Within Loops

To make loops more effective and precise, we can add conditional flow control within them to alter their behavior.

    Example of a conditional while loop

    execute the following file

    # conditional_while_loop.rb

This loop uses the `odd?` method to decide if the current variable in the loop is odd. If it is, it prints to the screen. Next,`x` increments by one, and then the loop proceeds to the next iteration.

The reserved words `next` and `break` can be useful when looping as well.

If you place the `next` reserved word in a loop, it will jump from that line to the next loop iteration without executing the code beneath it. If you place the `break` reserved word in a loop, it will exit the loop immediately without executing any more code in the loop.

    Example of a conditional while next loop

    execute the following file

    # conditional_while_with_next_loop.rb



    Example of a conditional while break loop

    execute the following file

    # conditional_while_with_break_loop.rb

## Iterators

Iterators are methods that naturally loop over a given set of data and allow you to operate on each element in the collection.

We said earlier that arrays are ordered lists. Let's say that you had an array of names and you wanted to print them to the screen. How could you do that? You could use the each method for arrays, like this:

    Example of a listing all names in array

    execute the following file

    # practice_each_block.rb

We have called the `each` method using the dot operator (`.`) on our array. What this method does is loop through each element in our array, in order, starting from `'Bob'`. Then it begins executing the code within the block. The block's starting and ending points are defined by the curly braces `{}`. Each time we iterate over the array, we need to assign the value of the element to a variable. In this example we have named the variable `name` and placed it in between two pipes `|`. After that, we write the logic that we want to use to operate on the variable, which represents the current array element. In this case it is simply printing to the screen using `puts`.

    Example of a listing all names in array

    execute the following file

    # practice_each_block_do_end.rb

**There are many types of Iterators methods in Ruby, like `each`, dont worry will get to review them**

## Recursion

**Recursion** is another way to create a loop in Ruby. Recursion is the act of calling a method from within itself. That probably sounds confusing so let's look at some actual code to get a better idea.

A Simple Example
Let's say you wanted to know what the double of a number was, then the double of that number, etc. Let's say you wanted to double the number until the pre-doubled number is 10 or greater. You could create the following method:

    Example of a recursion

    execute the following file

    # recursion_doubler_method.rb

  when this code is executed

    irb(main):001:0> def doubler(start)
    irb(main):002:1>   puts start * 2
    irb(main):003:1> end
    => :doubler
    irb(main):004:0> doubler(2)
    4
    => nil
    irb(main):005:0> doubler(4)
    8
    => nil
    irb(main):006:0> doubler(8)
    16
    => nil

Only the method is defined in the previous example, so when you use it and want to double multiple numbers, then you must run the doubler method each time.

    Example of a recursion

    execute the following file

    # recursion_doubler.rb

### Another example of recursion

We are using a method that uses recursion to calculate the nth number in the fibonacci sequence. You can learn more about the fibonacci sequence [here](http://en.wikipedia.org/wiki/Fibonacci_number). Basically, it is a sequence of numbers in which each number is the sum of the previous two numbers in the sequence.

Note: This example may take a few reads to really grasp what's happening at every point in the program. That's normal. Just take your time, and you'll be fine. Also, be excited! We are getting closer to reading more real-world examples!

![Fibonacci Visualized](https://github.com/creaturenex/LS_Intro/blob/master/Loops_Iterators/fibonacci_visual.png)

    Example of a recursion2

    execute the following file

    # fibonacci.rb

Each time the code branches off again you are calling the fibonacci function from within itself two times. If you take all of those ones and zeros and add them together, you'll get the same answer you get when you run the code. You can see why computer programs are handy now. Think if you had to draw that diagram out every time you wanted to know the fibonacci respresentation of a number. Yikes!

The key concept with recursion is that there is some baseline condition that returns a value, which then "unwinds" the recursive calls. You can think of the successive recursive calls building up, until some value is returned, and only then can the recursive calls be evaluated.
