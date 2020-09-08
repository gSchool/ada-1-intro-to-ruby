# Keyword and Optional Arguments

## Learning Goals

By the end of this lesson, we will be able to...

- Differentiate between _positional_ and _keyword_ arguments
- Use _optional arguments_ to simplify method signatures
- Add _default values_ to method parameters

## Keyword and Optional Arguments

### Introduction: Coffee Price
Imagine we are building a point-of-sale system for a local coffee shop. Our program needs to be able to calculate the price for various caffeinated beverages. Because this is one specific behavior, we have decided to encapsulate it in a method.

After looking over the menu a bit, we've come up with the following rules:
- There are 3 different types of coffee, each with a different base price
  - Drip, $1.50
  - Latte, $3.70
  - Cappuccino, $3.20
- Bigger sizes of coffee apply a multiplier to the base price
  - Tall, base price
  - Grande, base price X 1.3
  - Venti, base price X 1.6

These rules translate into the following code.

```ruby
def coffee_price(type, size)
  # Find the base price for this drink
  case type
  when :drip
    price = 1.5
  when :latte
    price = 3.7
  when :cappuccino
    price = 3.2
  else
    puts "Invalid coffee type: #{type}"
    return
  end

  # Modify for size
  case size
  when :tall
    # No change
  when :grande
    price *= 1.3
  when :venti
    price *= 1.6
  else
    puts "Invalid size: #{size}"
    return
  end

  return price
end
```

The `coffee_price` method would be invoked as follows:

```ruby
price = coffee_price(:latte, :venti)
puts "Your total is #{price} dollars"
```

<!-- available callout types: info, success, warning, danger, secondary  -->
### !callout-info

## Method comprehension questions.

Spend some time reading through the above code, then answer the following questions. For questions that do not require an entry in Learn, you can talk to your rubber duck, jot down notes in a notebook, and use another strategy of your choosing.

- Why is it useful to put this functionality in a method?
- How does the method work?
  - Does anything surprise you about it?
- How would you make sure this method does the right thing?
- Why do we use _symbols_ as the values for `type` and `size` instead of _strings_?

### !end-callout


<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: short-answer
* id: 46bfaed5-da9b-48b4-a087-a4303ddd9fef
* title: What is the method signature?
* points: 1 
* topics: keyword-arguments


##### !question

- What's the _method signature_ of the `coffee_price` method?

##### !end-question

##### !placeholder

method signature

##### !end-placeholder

##### !answer

/coffee_price\s?\(\s?type,\s?size\s?\)/

##### !end-answer

##### !hint

The method signature comes after `def`.

##### !end-hint

##### !explanation

The method signature is the name of the method and the paramter(s).

`coffee_price(type, size)`

##### !end-explanation


### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: checkbox
* id: a01f2053-d2b0-433f-b528-f5347c95eb2b
* title: What is returned?
* points: 1 
* topics: keyword-arguments

##### !question

What can `coffee_price` _return_?

##### !end-question

##### !options

* `price`
* `"Invalid coffee type: [type]"`
* `type`
* `size`
* `nil`

##### !end-options

##### !answer

* `price`
* `nil`

##### !end-answer

##### !hint

Consider what is returned when the arguments are valid. See the last line of the method. Also consider what is returned when the arguments are invalid.

##### !end-hint

##### !explanation

`price` is returned when the arguments are valid. `nil` is returned when the arguments are invalid.

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: multiple-choice
* id: d540fc24-7dc8-4d17-a408-e2c09fa7571d
* title: What happens when the arguments don't match?
* points: 1 
* topics: keyword-arguments

##### !question

What happens if your argument doesn't match what the method expects, like `coffee_price(:decaf, :grande)`?

##### !end-question

##### !options

* Executing the code produces an _Error_ / _Exception_
* `Invalid coffee type: decaf` is output and `nil` is returned.
* `Invalid size: grande` is output and `nil` is returned.

##### !end-options

##### !answer

* `Invalid coffee type: decaf` is output and `nil` is returned.

##### !end-answer

##### !explanation

The method hits the first conditional control structure that calculates `price` based on `type`. Since the `type` `:decaf` does not match any of the cases, the code in the `else` block is executed.

##### !end-explanation


### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->



### Adding More Options

Now that we've got the basics, it's time to add some of the options on our coffee menu.
- Extra shots of espresso: $0.50 each
- Served cold: $1.00 extra

Let's update our code to match:

```ruby
def coffee_price(type, size, extra_shots, cold)
  # Find the base price for this drink
  case type
  when :drip
    price = 1.5
  when :latte
    price = 3.7
  when :cappuccino
    price = 3.2
  else
    puts "Invalid coffee type: #{type}"
    return
  end

  # Modify for size
  case size
  when :tall
    # No change
  when :grande
    price *= 1.3
  when :venti
    price *= 1.6
  else
    puts "Invalid size: #{size}"
    return
  end

  # Charge for extra shots
  price += extra_shots * 0.5

  # Charge for a cold drink
  if cold
    price += 1
  end

  return price
end
```

The code is starting to get pretty complicated, but that makes sense because our coffee pricing logic is also complex.

Our _method signature_ is also starting to get complex. Here are two examples of calling the new `coffee_price`:

```ruby
# Price a venti hot latte with 3 extra shots
coffee_price(:latte, :venti, 3, false)

# Price a tall iced drip
coffee_price(:drip, :tall, 0, true)
```

Having so many parameters on one method introduces several issues:
1. The caller must remember the order of the arguments
2. When reading the call, there's no way to tell which argument is which
3. The caller must provide values for all arguments, even for the "standard" way of doing things (e.g. no extra shots)

All of these put the onus on the caller to do things right, which is just asking for trouble. **A well-written method is easy to use right and hard to use wrong** - by that standard, this is not good code.

To address these issues, we will introduce two new concepts: optional arguments and keyword arguments. We'll use each by itself first, then show how they can be used together to create clean, readable code.

Also now that we're introducing a different type of argument, it's important that we recognize that the type of argument we've seen so far is generally referred to as a **Positional Argument**. The name will hopefully make more sense later on in the lesson, but for now you just need to know that's what it's called.

<!-- available callout types: info, success, warning, danger, secondary  -->
### !callout-info

## Optional Arguments

We're going to tackle _#3 The caller must provide values for all arguments, even for the "standard" way of doing things (e.g. no extra shots)_ first by introducing Ruby's support for **Optional Arguments**.

### !end-callout

Optional arguments enable you to set default values when defining a function so that the caller doesn't need to pass them unless the value varies from the default. 

```ruby
# Define the method
def coffee_price(type, size, extra_shots = 0, cold = false)
  # ... calculate price, same code as before ...
  return price
end

# Price for a venti latte with 3 extra shots
coffee_price(:latte, :venti, 3)

# Price for a tall iced drip
coffee_price(:drip, :tall, 0, true)

# Price for a grande cappuccino
coffee_price(:cappuccino, :grande)
```

Notice that not all the arguments in the method above are optional. _Optional Arguments_ can co-exist with _Positional Arguments_ (and often do).

Positional arguments must come first, both in the definition and when the method is called.

Optional arguments can help make method invocations easier to read and write, and you'll see them frequently in Ruby, particularly when working with gems or other peoples' code. However, the following issues:

1. The caller must remember the order of the arguments
2. When reading the call, there's no way to tell which argument is which

are still unaddressed.

<!-- available callout types: info, success, warning, danger, secondary  -->
### !callout-info

## Keyword Arguments

We can address these issues with a technique called _keyword arguments_. 

### !end-callout

The syntax for keyword arguments includes a colon `:` after the paramter name as shown below:

```ruby
# Define the method
def coffee_price(type, size, extra_shots:, cold:)
  # ... calculate price, same code as before ...
  return price
end

# Price for a venti latte with 3 extra shots
coffee_price(:latte, :venti, extra_shots: 3, cold: false)

# Price for a tall iced drip
coffee_price(:drip, :tall, extra_shots: 0, cold: true)

# Price for a grande cappuccino
coffee_price(:cappuccino, :grande, extra_shots: 0, cold: false)
```

There are a few things to note here:
- When a method is invoked, any keyword arguments are passed by name (a.k.a. _keyword_)
- Keyword arguments can be passed in any order. (ie. `coffee_price(:drip, :tall, cold: true, extra_shots:2)`)
- Keyword Arguments can also co-exist with Positional Arguments
  - Positional arguments must come first, both in the definition and when the method is called

So new we've learned how to solve issue #3 and issues #1 & #2, but we haven't solved them all at once.

<!-- available callout types: info, success, warning, danger, secondary  -->
### !callout-info

## Optional Keyword Arguments

Why not utilize both concepts? We can also make keyword arguments optional by adding a default value after the colon. 

### !end-callout

```ruby
# Define the method
def coffee_price(type, size, extra_shots: 0, cold: false)
  # ... calculate price, same code as before ...
  return price
end

# Price for a venti latte with 3 extra shots
coffee_price(:latte, :venti, extra_shots: 3, cold: false)

# Price for a tall iced drip
coffee_price(:drip, :tall, cold: true)

# Price for a grande cappuccino
coffee_price(:cappuccino, :grande)
```

In each of these iterations, the only things we've changed are the parameters in the method signature, the body of the method remains the same. 

  <details>
  
  <summary> The end result should resemble the code viewed by expanding this arrow. </summary>

  ```ruby
  def coffee_price(type, size, extra_shots: 0, cold: false)
    # Find the base price for this drink
    case type
    when :drip
      price = 1.5
    when :latte
      price = 3.7
    when :cappuccino
      price = 3.2
    else
      puts "Invalid coffee type: #{type}"
      return
    end
  
    # Modify for size
    case size
    when :tall
      # No change
    when :grande
      price *= 1.3
    when :venti
      price *= 1.6
    else
      puts "Invalid size: #{size}"
      return
    end
  
    # Charge for extra shots
    price += extra_shots * 0.5
  
    # Charge for a cold drink
    if cold
      price += 1
    end
  
    return price
  end
  
  # Price for a venti latte with 3 extra shots
  coffee_price(:latte, :venti, extra_shots: 3, cold: false)
  
  # Price for a tall iced drip
  coffee_price(:drip, :tall, cold: true)
  
  # Price for a grande cappuccino
  coffee_price(:cappuccino, :grande)
  ```


  </details>

### When to use which argument types

**Optional arguments** are handy but aren't always the right choice.

- Sometimes an argument doesn't have a clear default value
  - For `type`, should the default be `:drip`, `:latte` or `:cappuccino`?
- Sometimes a method doesn't make sense without one of the arguments
  - How can you price coffee if you don't know the size?

**Keyword arguments** are mostly useful when the number of arguments becomes more than 2 or 3.

When you make a method, and you write code to call it, ask yourself, "is it hard remember or understand which argument is which?" or conversely "is it more trouble than it's worth to type out the keywords?"

## Summary

|                | Required                                    | Optional                                  |
|----------------|---------------------------------------------|-------------------------------------------|
| **Positional** | coffee_price(type, size, extra_shots, cold) | coffee_price(type, size, extra_shots = 0, cold = false) |
| **Keyword**    | coffee_price(type:, size:, extra_shots:, cold:) | coffee_price(type, size, extra_shots: 0, cold: false) |

- **Positional arguments** are the type of method arguments we've seen so far
- **Keyword arguments** 
  - are given by name
  - can make calling a method easier when there are several arguments
- **Optional arguments** 
  - default to a specified value if not given by the caller
  - both _Positional Arguments_ and _Keyword Arguments_ can be made _Optional_

- _Keyword Arguments_ and _Optional Arguments_ can co-exist with _Positional Arguments_
  - Positional arguments must come first, both in the definition and when the method is called

## Additional Resources
* [Ruby 2 Keyword Arguments](https://robots.thoughtbot.com/ruby-2-keyword-arguments)
