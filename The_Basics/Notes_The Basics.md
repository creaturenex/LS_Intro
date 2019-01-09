# The Basics
## Strings
A string is a list of characters in a specific sequence. Strings are surrounded by either single quotes ('hi there') or double quotes ("hi there"). If I want to include single quotes within a string then I have two options.

    Example of a string with double quotes
      "The man said, 'Hi there!'"

    Example of a string with single quotes and escaping
      'The man said, \'Hi there!\''

(\ backslash) and the following single (' quote) when inside a string means the (\ backslash) will treat the single (' quote) as non special character

## Symbol
Symbols are like strings but are intended to never be changed.Needs the (: colon)

    Examples of symbols
      :name
      :a_symbol
      :"surprisingly, this is also a symbol"

## Numbers
Numbers are represented many ways in Ruby.

### An integer
Is usually a whole number only, with no decimal point.

    Examples of integers
      1
      13
      506
      43450

### A float
Is a number that contains a decimal.

    Examples of floats
      1.2345
      2345.4267
      98.2234

### Nil
Literally means nothing; for example if I was asked to type a number but I didn't write anything at all. Usually treated as False.

#### Math Operations
    Addition
    irb :001 > 1 + 1
    => 2

    Subtraction
    irb :001 > 1 - 1
    => 0

    Multiplication
    irb :001 > 4 * 4
    => 16

    Division vs. Modulus
    You can divide integers with the / operator.

    Division
    irb :001 > 16 / 4
    => 4

    Modulo (same as remainder)
    irb :001 > 16 % 4
    => 0

    irb :001 > 16 % 5
    => 1

Notice what happens when I try to divide integers that don't divide evenly.

    irb :001 > 15 / 4
    => 3 (will return the lowest integer)

When dividing integers, you will only receive an integer in return. We need a different data type if we want more precision. That's where floats come in.

#### Multiplying and Dividing Floats
In order to get accurate calculation you need to use floats. Whenever you use a float in an operation, Ruby always returns a float, even if one of the numbers is a plain integer.

    Division using a float
    irb :001 > 15.0 / 4
    => 3.75

    Multiplication using a float
    irb :001 > 9.75 * 4.32
    => 42.120000000000005

## String Concatenation
it joins strings together

    Example of concatenation
    irb :001 > 'foo' + 'foo'
    => "foofoo"

    irb :002 > 'foo' + 'bar'
    => "foobar"

**NOTE**
You can only add same groups 'String' + 'String' & Num + Num, together.

This does not work!
'String' + Num

You can convert a string to a number (integer or float) by

    Example convert string to integer
    irb :001 > '4'.to_i
    => 4

    Example convert string to float
    irb :004 > '4'.to_f
    => 4.0

you can convert a number to string
    Example conert number to string
    irb :004 > 4.to_s
    => '4'

## Arrays [ ]
An array is used to organize information into an ordered list. The list can be made up of strings, integers, floats, booleans, or any other data type. It is represented with square brackets [ ].
Inside the brackets you can create a list of elements separated by commas.

    Example of an array
    irb :001 > [1, 2, 3, 4, 5]
    => [1, 2, 3, 4, 5]

  **NOTE**
  The first item on the list start with a (0 zero)

    irb :001 > [ 1, 2, 3, 4, 5][0]

    I want to know the first item on the list so i put 0
    => 1

## Hashes { }
A hash, sometimes referred to as a dictionary, is a set of key-value pairs. It is represented with curly braces { }. A key-value pair is an association where a key is assigned a specific value. A hash consists of a key, usually represented by a symbol, that points to a value (denoted using a =>) of any type of data.

    Example of a hash
    irb :001 > {:dog => 'barks', :cat => 'meows', :pig => 'oinks'}
    => {:dog => 'barks', :cat => 'meows', :pig => 'oinks'}
In this case :dog (which is a symbol) is the key and 'barks' (which is a string) is the value

puts VS return
