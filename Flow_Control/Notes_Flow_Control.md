# Flow Control

When you are writing programs, you want your data to make the right decisions. You want your data to do the right thing when it's supposed to. In computer programming, this is called conditional flow. This is done by using **conditionals**

## Conditionals

A conditional is a fork (or option) in the road. When our programs gets to a conditional it tells the program where to go based on the parameters. Conditionals are formed using a combination of `if` statements and comparison operators `<, >, <=, >=, ==, !=, &&, ||`. They are the basic logical structures that define with the reserved words `if`, `else`, `elsif`, and `end`.

    Example of a conditional

    # conditional.rb

    puts "Put in a number"
    a = gets.chomp.to_i

    if a == 3
      puts "a is 3"
    elsif a == 4
      puts "a is 4"
    else
      puts "a is neither 3, nor 4"
    end

The examples below are all valid Ruby conditionals.
    # Example 1
    if x == 3
      puts "x is 3"
    end

    # Example 2
    if x == 3
      puts "x is 3"
    elsif x == 4
      puts "x is 4"
    end

    # Example 3
    if x == 3
      puts "x is 3"
    else
      puts "x is NOT 3"
    end

    # Example 4:
    must use "then" keyword when using 1-line syntax
    if x == 3 then puts "x is 3" end

Other ways to write Conditionals

Another way to write the Example 1 from above

    # Example 1 rewritten

    puts "x is 3" if x == 3

Another reserved word is `unless`, it acts as the opposite of `if`, so you can use it like this.

    puts "x is not 3" unless x == 3

## Comparisons

Lets review comparison operators to build more complicated conditional statements.

**NOTE: Comparison Operators always return a boolean value. A boolean value is either `true` or `false`, nothing else.**

`<` - The "less than" symbol. Anything to the left of the symbol has a lower value than anything to the right of the symbol.

`>` - The "greater than" symbol. Anything to the left of the symbol has a higher value than anything to the right of the symbol.

    # Example using 'less than' and 'greater than'

    irb :001 > 4 < 5
    => true

    irb :002 > 4 > 5
    => false

`<=` - The "less than or equal to" symbol. Anything to the left of the symbol is less than or equal to anything on the right.

`>=` - the "greater than or equal to" symbol. Anything to the left of the symbol is greater than or equal to anything on the right.

    irb :001 > 4 <= 5
    => true

    irb :002 > 5 >= 5
    => true

    irb :003 > 4 >= 5
    => false

    irb :004 > 4 >= 3
    => true

    irb :005 > 4 >= 4
    => true

`==` - The "is equal to" operator. Anything to the left of the symbol is exactly equal to anything on the right.

    irb :001 > 5 == 5
    => true

    irb :002 > 5 == 6
    => false

    irb :003 > '5' == 5
    => false

In the above example the 5 does not equal 5. That is because one 5 is a string denoted ed by the '' while the other is a number/integer.
