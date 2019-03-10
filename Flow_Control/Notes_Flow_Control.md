# Flow Control

When you are writing programs, you want your data to make the right decisions. You want your data to do the right thing when it's supposed to. In computer programming, this is called conditional flow. This is done by using **conditionals**

With an `if` statement you can check if something is true.

You can also say “if this is NOT true then do this other thing”: which why we use `else` to check if its false

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

In the above example the 5 does not equal 5. That is because one 5 is a string denoted by the ' ' while the other is an integer.

`!=` - The "not equal to" operator. Anything to the left of the symbol is not equal to anything to the right.

    irb :001 > 4 != 5
    => true

    irb :002 > 4 != 4
    => false

    irb :003 > 4 != 156
    => true

## Combining Expressions

 It is possible to combine multiple conditional expressions together to create a more specific scenario. This is done using the `&&` and `||` operators.

`&&` - the "and" operator. Expressions to the left and to the right of this operator have to be both true for the entire expression to be evaluated to true.

    irb :001 > (4 == 4) && (5 == 5)
    => true

    irb :002 > (4 == 5) && (5 == 5)
    => false

    irb :002 > (4 == 5) && (5 == 6)
    => false

`||` - the "or" operator. Either the expression to the left has to be true, or the expression to the right has to be true for the entire expression to be evaluated to true.

    irb :001 > (4 == 4) || (5 == 5)
    => true

    irb :002 > (4 == 5) || (5 == 5)
    => true

    irb :002 > (4 == 5) || (5 == 6)
    => false

`!` - the "not" operator. When you add this in front of a boolean expression it will change that boolean value to its opposite.

    irb :001 > !(4 == 4)
    => false

## **Order of Precedence**

The following is a list of operations from highest order of precedence (top) to lowest (bottom).

`<=`, `<`, `>`, `>=` - Comparison

`==`, `!=` - Equality

`&&` - Logical AND

`||` - Logical OR

    Example of order of precedence
    if x && y || z
      # do something
    end

First the x && y statement will be executed.
If that statement is true, then the program will execute the # do something code on the next line.
If the x && y statement is false, then the z will be evaluated.
If the z is true, the code on the next line will be evaluated. If the z is false, then the code will exit the if statement.

## Ternary Operators

Ruby has a nice option for short and concise conditional `if` statements. The ternary operator is a common Ruby idiom that makes a quick `if/else` statement easy and keeps it all on one line.

The ternary operator uses a combination of the `?` and `:`.

    # Ternary operator example

    irb :001 > true ? "this is true" : "this is not true"
    => "this is true"

    irb :001 > false ? "this is true" : "this is not true"
    => "this is not true"

So what is going on above?

The program is evaluating the code to the left of `?`.

The string to the left of the ":" is the same same as the `if` statement. `if` is evaluated if it IS true.

The string to the right of the `:` is the same as the `else` statement. `else` is evaluated if it is NOT true.

## Case Statements

A case statement has similar functionality to an if statement but with a slightly different interface.

Case statements use the reserved words `case`, `when`, `else`, and `end`. You create one by first defining a case and then evaluating the value of the case and what operation to complete if that case is true.

See case_statement.rb

See case_statement_refactored.rb

## True and False

**In Ruby, every expression evaluates to true when used in flow control, except for false and nil.**

    if x = 5
      puts "how can this be true?"
    else
      puts "it is not true"
    end

The above code is not testing whether x is equal to "5". It's assigning the variable x the value of "5", which will always evaluate to true. Unfortunately, that looks very similar to if x == 5, which is testing whether x is equal to "5". Be careful when reading or writing Ruby; its expressiveness can also be a source of many subtle bugs.
