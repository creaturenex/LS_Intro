# Variables
Variables are used to store information to be referenced and manipulated in a computer program.
They provide a way of labeling data with a descriptive name, so my programs can be understood more clearly by the reader and myself.
It is helpful to think of variables as containers that hold information. Their sole purpose is to label and store data in memory.
This data can then be used throughout your program.

When you assign a variable, you use the = symbol.
The name of the variable goes on the left and the value you want to store in the variable goes on the right.

    Example of a variable
    irb :001 > first_name = 'Joe'
    => "Joe"

    irb :002 > first_name
    => "Joe"

## Getting Data from a User
Use the method "gets" which means "get string"
When you use it, the program waits for the user to
1) type in information and 2) press the enter key.

    Example how to get data from a user
    irb :001 > name = gets
    Bob
    => "Bob\n"

The \n at the end is the "newline" character and represents the enter key.
put ".chomp" after any string to remove the carriage return characters at the end.

    Example
    irb :001 > name = gets.chomp
    Bob
    => "Bob"

    irb :002 > name + ' is super great!'
    => "Bob is super great!"


## Variable Scope
**NOTE** I did not go over this in Codecademy, but I did go over blocks. They did not go over the concept I get it after reading it though.

A variable's scope determines where in a program a variable is available for use. A variable's scope is defined by where the variable is initialized or created. In Ruby, variable scope is defined by a block. A block is a piece of code following a method invocation, usually delimited by either curly braces {} or do/end.

**NOTE** Be aware that not all do/end pairs imply a block.

Now that you have an idea of what constitutes a variable's scope, one rule that we want you to remember is this:

Inner scope can access variables initialized in an outer scope, but not vice versa.

**NOTE** Look at the error code generate in scope.rb.

## Types of Variables
There are five times of variables

#### Constants Variables
Are declared by capitalizing every letter in the variable's name. They are used for storing data that never needs to change. Constants cannot be declared in method definitions, and are available throughout your application's scopes.

    Example of a constant variable declaration
      MY_CONSTANT = 'I am available throughout your app.'

#### Global Variables
Are declared by starting the variable name with the dollar sign ($). These variables are available throughout your entire app, overriding all scope boundaries. Rubyists tend to stay away from global variables as there can be unexpected complications when using them.

    Example of a global variable declaration:
      $var = 'I am also available throughout your app.'

#### Class Variables
Are declared by starting the variable name with two @ signs. These variables are accessible by instances of your class, as well as the class itself. When you need to declare a variable that is related to a class, but each instance of that class does not need its own value for this variable, you use a class variable. Class variables must be initialized at the class level, outside of any method definitions. They can then be altered using class or instance method definitions.

    Example of a class variable declaration:
      @@instances = 0

#### Instance Variables
Are declared by starting the variable name with one @ sign. These variables are available throughout the current instance of the parent class. Instance variables can cross some scope boundaries, but not all of them.

    Example of an instance variable declaration:
      @var = 'I am available throughout the current instance of this class.'

#### Local Variables
Are the most common variables you will come across and obey all scope boundaries. These variables are declared by starting the variable name with neither $ nor @, as well as not capitalizing the entire variable name.

    Example of a local variable declaration:
      var = 'I must be passed around to cross scope boundaries.'
