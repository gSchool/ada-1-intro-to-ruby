# Conditional Control Structures

## Learning Goals

By the end of this lesson, we will be able to...

- Use `elsif` syntax to manage complex conditions
- Use `case` syntax to manage complex conditions
- Use `while` syntax as a conditional loop
- Use `until` syntax as a conditional loop

## Introduction

Read the two code blocks below. For each code block:

1. First, imagine what this code is doing. How would you describe what this code does?
1. Then, predict what the code will do with different inputs for `city_count` and `country_count`
1. Finally, check yourself by copying and pasting this into a new `.rb` file and running it several times.

Where were the conditional expressions?

```ruby
puts "How many cities have you been to?"
city_count = gets.chomp.to_i
puts "How many countries have you been to?"
country_count = gets.chomp.to_i

# without compound conditions
if city_count > 8
  if country_count > 2
    puts "Wow! You're a world traveler!"
  end
end

# This is the same as the above, with compound conditions
if city_count > 8 && country_count > 2
    puts "Wow! You're a world traveler!"
end
```

```ruby
if command == "add"
  puts "We're adding numbers."
end

if command == "+"
  puts "We're adding numbers."
end

# This is the same as the above
# same amount of work, half as much code
if command == "add" || command == "+"
  puts "We're adding numbers."
end
```

## Complex Conditionals with `elsif`
The `if/else/end` code we've written above is the standard and the simplest form of a conditional. It is possible to extend this form with one or more `elsif` lines. Let's look at something kinda scary first:

```ruby
if command == "add" || command == "+"
  puts "We're adding numbers"
else
  if command == "subtract" || command == "-"
    puts "We're subtracting numbers"
  else
    if command == "multiply" || command == "*"
      puts "We're multiplying numbers"
    end
  end
end
```
How can you refactor this code using `if/elsif/else`?

<details>

  <summary>
  Refactored code using if/elsif/else

  </summary>

  ```ruby
  # This is equivalent to the above
  if command == "add" || command == "+"
    puts "We're adding numbers"
  elsif command == "subtract" || command == "-"
    puts "We're subtracting numbers"
  elsif command == "multiply" || command == "*"
    puts "We're multiplying numbers"
  end
  ```
</details>

This can be very useful, when you have more than one `elsif` line, because the indentation, or *nesting*, can quickly become very deep, and more difficult to understand.


## Simplifying Long Conditionals with `case`
When you have several `elsif` lines within a single `if`, there's a way to write each conditional with much less repetition. First, a really long, really complex conditional:

```ruby
if command == "add" || command == "+"
  puts "We're adding numbers"
elsif command == "subtract" || command == "-"
  puts "We're subtracting numbers"
elsif command == "multiply" || command == "*"
  puts "We're multiplying numbers"
elsif command == "divide" || command == "/"
  puts "We're dividing numbers"
elsif command == "exponify" || command == "**"
  puts "We're exponentiating numbers"
elsif command == "sqrt"
  puts "We're finding the square root of a number"
else
  puts "What do you want from me?!"
end
```

The above code works, but it's kinda messy. We can trim it by using the `case/when` syntax:
```ruby
case command
  when "add", "+"
    puts "We're adding numbers"
  when "subtract", "-"
    puts "We're subtracting numbers"
  when "multiply", "*"
    puts "We're multiplying numbers"
  when "divide", "/"
    puts "We're dividing numbers"
  when "exponify", "**"
    puts "We're exponentiating numbers"
  when "sqrt"
    puts "We're finding the square root of a number"
  else
    puts "What do you want from me?!"
end
```

## `while` is a Conditional Loop

The while loop is syntax we can use if we want something to happen over and over and over again while **some condition** is true.

The standard syntax for a `while` loop in Ruby is:

```ruby
# ... any code that should happen
# before the while loop begins...

while some_condition
  # put as many
  # lines of code
  # that should run
  # as long as
  # some_condition
  # is a variable, condition, OR expression
  # that evaluates
  # to true

  # indent once inside here
  # and make sure to properly end the loop
  # with an end
end

# ... any code that should happen
# after the while loop ends...
```


Use a `while` loop to print out the numbers 0 though 3.

<details>

  <summary>
  While loop
  </summary>

  ```ruby
  i = 0

  while i < 4
    puts i
    i += 1
  end
  ```

  The above code will output the values of i until i is no longer less than 4, resulting in the following output:

  ```ruby
  0
  1
  2
  3
  ```

</details>

### Checking for valid user input using `while`

One good time to use a `while` loop is when checking for valid user input.

```ruby
command = gets.chomp

while command != "add" && command != "+"
  puts "Please tell me to add (+)!"
  command = gets.chomp
end

puts "OMG It's about time!"
```

## `until` is Another Conditional Loop

The while loop is syntax we can use if we want something to happen over and over and over again _**until**_ **some condition** is true.

```ruby
i = 0

until i == 4
  puts i
  i += 1
end
```

The above code will output the values of `i` until `i` is equal to `4`, resulting in the following (equivalent to the above) output:

```ruby
0
1
2
3
```
### Checking for valid input using `until`

`while` loops and `until` loops are conceptually similar. Because they are similar and do similar things, we can choose between `while` and `until` based on our situation.

If we are checking for valid input, it might _read_ more easily to use an `until` loop.

```ruby
command = gets.chomp

until command == "add" || command == "+" || command == "subtract" || command == "-"
  puts "Please tell me to add (+) or subtract (-)!"
  command = gets.chomp
end

puts "Yay we did it!"
```


### !callout-info

## Pro-Tip on Checking for Valid Input: Make it clearer by using `include?`

The _Array method_ `include?` can be used to simplify a complex conditional. It returns `true` if the provided _parameter_ is equal to any of the elements in the _Array_, otherwise, it returns `false`:

```ruby
command = gets.chomp

until ["add", "+", "subtract", "-"].include?(command)
  puts "Please tell me to add (+) or subtract (-)!"
  command = gets.chomp
end

puts "Yay we did it!"
```

### !end-callout