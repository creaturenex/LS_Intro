# Methods

A piece of code that needs to be executed many times in a program. Most programming languages called that code a procedure, which allows you to extract the common code to one place. In Ruby, we call it a method. Before we can use a method, we must first define it with the reserved word def. After the def we give our method a name. At the end of our method definition, we use the reserved word end to denote its completion. This is an example of a method definition named say:

    Example of a method
    def say
      # method body goes here
    end

We call (or invoke) the method by typing its name and passing in arguments. You'll notice that there's a **(words)** after say in the method definition. This is what's called a **parameter**. Parameters are used when you have data outside of a method definition's scope, but you need access to it within the method definition. If the method definition does not need access to any outside data, you do not need to define any parameters.

    def say(words)
      puts words
      end

      say("hello")
      say("hi")
      say("how are you")
      say("I'm fine")

You will also see the term **method invocation** to refer to calling a method.

You can name parameters whatever you'd like, but like we said earlier, it is always the goal of a good programmer to give things meaningful and explicit names. We name the parameter words because the say method expects some words to be passed in so it knows what to say! **Arguments** are pieces of information that are sent to a method invocation to be modified or used to return a specific result. We "pass" arguments to a method when we call it.

Here, we are using an argument to pass the word, or string of words, that we want to use in the say method definition. When we pass those words into the method definition, they're assigned to the local variable words and we can use them however we please from within the method definition. Note that the words local variable is scoped at the method definition level; that is, you cannot reference this local variable outside of the say method definition.

When we call say("hello"), we pass in the string "hello" as the argument in place for the words parameter. Then the code within the method definition is executed with the words local variable evaluated to "hello". One of the benefits that methods give us is the ability to make changes in one place that affect many places in our program. Suppose we wanted to add a . at the end of every string we send to the say method. We only have to make that change in one place.

![Method Invocation](</home/oscar/LS_Intro/Methods/method invocation.JPG>)


## Default parameters

When you're defining methods you may want to structure your method definition so that it always works, whether given parameters or not.
What will the method show if nothing is inputted

    Example
    def say(words='hello')
      puts words + '.'
    end

    say()
    say("hi")
    say("how are you")
    say("I'm fine")

## Optional Parentheses
Many Rubyists will leave off parentheses when calling methods as a style choice. For example, say() could be rewritten as just say. With arguments, instead of say("hi"), it could just be say "hi".  This leads to more fluid reading of code, but sometimes it can be confusing. Keep that in mind when you're reading Ruby; it can get tricky deciphering between local variables and method names!

## Method Definition and Local Variable Scope

Before moving on to the next topic on methods, let's take a moment to discuss the concept of local variable scope within a method definition.

A method definition creates its own scope outside the regular flow of execution. This is why local variables within a method definition cannot be referenced from outside of the method definition. It's also the reason why local variables within a method definition cannot access data outside of the method definition (unless the data is passed in as a parameter).

**Note**
Do not confuse "method invocation with a block" and "method definition"

    # Method invocation with a block

    [1, 2, 3].each do |num|
      puts num
    end


    # Method definition

    def print_num(num)
      puts num
    end

## obj.method or method(obj)

There are two methods to call a Method.

The some method format  
`some_method(obj)`  
Is when you send arguments to a method call; in the previous example, `obj` is the argument being passed in to the `some_method` method.

The explicit caller format  
`a_caller.some_method(obj)`  
More detail in part III on Object Oriented Programming. Think of the previous code as `some_method` modifying `a_caller`. You'll have to memorize which way is required to call a method for now.

## Mutating the Caller

Sometimes, when calling a method, the argument can be altered permanently. We call this mutating the caller.

**NOTE** Before getting into that, recall that we previously stated that method arguments are scoped at the method definition level, and are not available outside of the method definition.

    Example:
    def some_method(number)
      number = 7 # this is implicitly returned by the method
    end

    a = 5
    some_method(a)
    puts a


In the above code, we passed in `a` to the `some_method method`. In `some_method`, the value of `a` is assigned to the local variable `number`, which is scoped at the method definition level. `number` is reassigned the value "7".

Did this affect `a`'s value?
No!

`number` is scoped at the method definition level and `a`'s value is unchanged. Therefore, we proved that method definitions cannot modify arguments passed in to them permanently.

There's an exception to this rule. The exception is *when we perform some action on the argument that mutates the caller, we can in fact permanently alter variables outside the method definition's scope.*
