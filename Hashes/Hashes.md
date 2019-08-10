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

We used Ruby hash's `empty?` method to detect whether the options parameter, which is a hash, had anything passed into it. You haven't seen this method yet but you can infer what it does. You could also check out the Ruby Docs to look up the method as well. At the end we called the method twice. Once using no optional parameters, and a second time using a hash to send the optional parameters. You can see how using this feature could make your methods much more expressive and dynamic.

And finally, to add a small twist, you can also pass in arguments to the `greeting` method like this:

    greeting("Bob", age: 62, city: "New York City")

Notice the curly braces, `{ }`, are not required when a hash is the last argument, and the effect is identical to the previous example. This convention is commonly used by Rails developers. Understanding this concept alone should help you decipher some previously cryptic Rails code!

## Hashes vs. Arrays

This chapter and the last covered two very important and widely used data structures: hashes and arrays. It can be a bit overwhelming when you look at all of the different ways there are to represent data with code. Don't feel too daunted. Pick these things up in small parts and apply them. Then add more little parts as you move along. It's impossible to know everything in the beginning so put some effort into learning a few things well and then build from there.

When deciding whether to use a hash or an array, ask yourself a few questions:

-   Does this data need to be associated with a specific label? If yes, use a hash. If the data doesn't have a natural label, then typically an array will work fine.

-   Does order matter? If yes, then use an array. As of Ruby 1.9, hashes also maintain order, but usually ordered items are stored in an array.

-   Do I need a "stack" or a "queue" structure? Arrays are good at mimicking simple "first-in-first-out" queues, or "last-in-first-out" stacks.

As you grow as a developer, your familiarity with these two data structures will naturally affect which one you reach for when looking to solve specific problems. The key is to practice and experiment with each to find out which data structure works best in certain situations.

## A Note on Hash Keys

Thus far, we have been using symbols as our keys in all of the hashes we've been creating. We have done this because it is the most common use case in the wild. However, it is possible to use a different data type for a key. Let's take a look.

    irb :001 > {"height" => "6 ft"}     # string as key
    => {"height"=>"6 ft"}
    irb :002 > {["height"] => "6 ft"}   # array as key
    => {["height"]=>"6 ft"}
    irb :003 > {1 => "one"}             # integer as key
    => {1=>"one"}
    irb :004 > {45.324 => "forty-five point something"}  # float as key
    => {45.324=>"forty-five point something"}
    irb :005 > {{key: "key"} => "hash as a key"}  # hash as key
    => {{:key=>"key"}=>"hash as a key"}

Pretty bizarre. So you can see that hashes can be very diverse and you can pretty much store whatever you want to in them. Also notice that we are forced to use the old style (i.e., using `=>`) when we deviate from using symbols as keys.
