# Loops and Iterators

A loop is the repetitive execution of a piece of code for a given amount of repetitions or until a certain condition is met.

  Examples of loops

  `while` loops,

  `do/while` loops,

  `for` loops

## Simple Loops

The simplest way to create a loop in Ruby is using the loop method. loop takes a block, which is denoted by { ... } or do ... end. A loop will execute any code within the block (again, that's just between the {} or do ... end) until you manually intervene with Ctrl + c or insert a break statement inside the block, which will force the loop to stop and the execution will continue after the loop.

    Example of a loop

    execute the following file

    # loop_example.rb

### Controlling Loop Execution

You'll hardly do something like this in a real program as it's not very useful and will result in an infinite loop. Eventually your system will crash.

Let's look at a more useful example with the `break` keyword by creating a file named useful_loop.rb:

    Example of a useful loop

    execute the following file

    # useful_loop.rb

The `break` keyword allows us to exit a loop at any point, so any code after a `break` will not be executed. Note that `break` will not exit the program, but only exit the loop and execution will continue on from after the loop.

Next, let's look at adding conditions within a loop by printing all even numbers from 0 up to 10. Let's create a file named `conditional_loop.rb`

    Example of a conditional loop

    execute the following file

    # conditional_loop.rb

You can see from the above that break was not executed during the first 4 iterations through the loop, but on the 5th iteration, the `if` statement evaluated to `true` and so the code within the `if` statement was executed, which is just `break`, and execution exited the loop.

We'll talk explicitly about using conditionals within a loop later. Similar to how we use `break` to exit a loop, we can use the keyword `next` to skip the rest of the current iteration and start executing the next iteration. We'll use the same example as before to demonstrate. This time we'll skip `4`.

    Example of a next loop

    execute the following file

    # next_loop.rb

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

![Fibonacci Visualized](<https://github.com/creaturenex/LS_Intro/blob/master/Loops_Iterators/fibonacci_visual.png>)

    Example of a recursion2

    execute the following file

    # fibonacci.rb

Each time the code branches off again you are calling the fibonacci function from within itself two times. If you take all of those ones and zeros and add them together, you'll get the same answer you get when you run the code. You can see why computer programs are handy now. Think if you had to draw that diagram out every time you wanted to know the fibonacci respresentation of a number. Yikes!

The key concept with recursion is that there is some baseline condition that returns a value, which then "unwinds" the recursive calls. You can think of the successive recursive calls building up, until some value is returned, and only then can the recursive calls be evaluated.
