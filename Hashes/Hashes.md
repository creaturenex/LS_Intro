# Hashes

A hash is a data structure that stores items by associated keys. This is contrasted against arrays, which store items by an ordered index. Entries in a hash are often referred to as key-value pairs. This creates an associative representation of data.

Most commonly, a hash is created using symbols as keys and any data types as values. All key-value pairs in a hash are surrounded by curly braces `{}` and comma separated.

Hashes can be created with two syntaxes. The older syntax comes with a `=>` sign to separate the key and the value.

    irb :001 > old_syntax_hash = {:name => 'bob'}
    => {:name=>'bob'}

The newer syntax is introduced in Ruby version 1.9 and is much simpler. As you can see, the result is the same.

    irb :002 > new_hash = {name: 'bob'}
    => {:name=>'bob'}

You can also have hashes with many key-value pairs.

    irb :003 > person = { height: '6 ft', weight: '160 lbs' }
    => {:height=>'6 ft', :weight=>'160 lbs'}

Let's say you wanted to add on to an existing hash.

    irb :004 > person[:hair] = 'brown'
    => "brown"
    irb :005 > person
    => {:height=>'6 ft', :weight=>'160 lbs', :hair=>'brown'}

    irb :006> person[:age] = 62
    => 62
    irb :007> person
    => {:height=>'6 ft', :weight=>'160 lbs', :hair=>'brown', :age=>62}

And what if you want to remove something from an existing hash?

    irb :008 > person.delete(:age)
    => 62
    irb :009 > person
    => {:height=>'6 ft', :weight=>'160 lbs', :hair=>'brown'}

Now how do you retrieve a piece of information from a hash?

    irb :010 > person[:weight]
    => "160 lbs"

What if you want to merge two hashes together?

    irb :011 > person.merge!(new_hash)
    => {:height=>'6 ft', :weight=>'160 lbs', :hair=>'brown', :name=>'bob'}

Notice that we used the bang suffix (`!`) to make this change destructive. We could have chosen to use the `merge` method instead, which would have returned a new merged hash, but left the original `person` hash unmodified.

## Iterating Over Hashes

Because hashes can have multiple elements in them, there will be times when you'll want to iterate over a hash to do something with each element. Iterating over hashes is similar to iterating over arrays with some small differences. We'll use the `each` method again and this time we'll create a new file to test this out.

    # iterating_over_hashes.rb

    person = {name: 'bob', height: '6 ft', weight: '160 lbs', hair: 'brown'}

    person.each do |key, value|
      puts "Bob's #{key} is #{value}"
    end

We use the `each` method like before, but this time we assign a variable to both the key and the value. In this example we are setting the `key` to the key variable and the value to the `value` variable. Run this program at the command line with `ruby iterating_over_hashes.rb` to see the results. The output is:

    Bob's name is bob
    Bob's height is 6 ft
    Bob's weight is 160 lbs
    Bob's hair is brown

## Hashes as Optional Parameters

You may recall in chapter three on methods, we talked about the ability to assign default parameters to your methods so that the output is always consistent. You can use a hash to accept optional parameters when you are creating methods as well. This can be helpful when you want to give your methods some more flexibility and expressivity. More options, if you will! Let's create a method that does just that.

    # optional_parameters.rb

    def greeting(name, options = {})
      if options.empty?
        puts "Hi, my name is #{name}"
      else
        puts "Hi, my name is #{name} and I'm #{options[:age]}" + " years old and I live in #{options[:city]}."
      end
    end

    greeting("Bob")
    greeting("Bob", {age: 62, city: "New York City"})
