# Constants

## Introduction

We have learned about local variables so far. One other kind of variable in Ruby is a constant.

## Learning Goals

By the end of this lesson, we will be able to...

- Define constants, or constant variables
- Use constants, assign them, and read them
- Practice creating and reading constants in irb, repl, and Ruby code

## Constants

Constants represent a variable that holds a value that is expected to **not** be reassigned.

With a local variable, we can assign and reassign values as much as we would like:

```ruby
current_age = 41
current_age = 42
```

What if we need a variable where it is _important_ that the variable is never reassigned?

Ruby gives us a way to communicate this in code with constants.

```ruby
BIRTH_DATE_DAY = "1"
BIRTH_DATE_MONTH = "August"
BIRTH_DATE_YEAR = "1980"
```

When we declare and assign a value to a constant, we know as programmers that we can't reassign it.

Here are some following rules of constants:
- Constants are all uppercase with using underscores to separate words
- Constants are available within the scope of their initialization
- Constants will raise an error if they are read before they're created
- Constants can not be defined inside of methods
- Constants are like any other variables, except that their value must remain constant for the duration of the program
- In Ruby, constants will raise a warning if reassigned

### !callout-info

## How Do We Know It's "Important" and Should Be a Constant?

We said we make and use constants "where it is _important_ that the variable is never reassigned." What does "_important_" mean?

<br>

Importance is determined by context. Sometimes it's important to programmers, and sometimes it's important to business! For example, since variables are great at holding information, we might want a variable that says `name = "Ada Developers Academy"`. Then we can use the variable `name` over and over again and not have to make typos when we type `"Ada Developers Academy"` (is there an apostrophe?)! However, in a 1,000-line file of code, we might forget that Ada Developers Academy's name **should** never change.

<br>

As we learn more technologies and software systems, we'll have clearer examples of technical contexts that use constants, like in configuration files.

### !end-callout

Creating a constant is a way that developers communicate with each other, and signal _meaning and intention_ to each other. The constant variable is the "head nod" to a neighbor on the street that says, "I see your capital letters, and I know you don't want to be reassigned." It's the silent agreement that tells most people "it's _important_ to me to not walk in the same direction after we say goodbye."

## Constants In Action

Let's look at an example of creating a constant. Then, let's look at an example of trying to reassign it.

```ruby
RENTAL_PERIOD = 14

def checkout_book
  puts "Your book is due in #{RENTAL_PERIOD} days."
end

checkout_book
```

This code outputs the following:
```
Your book is due in 14 days.
```

Here we observe that `checkout_book` has access to the constant `RENTAL_PERIOD`. This variable cannot be reassigned. Trying to reassign `RENTAL_PERIOD` to 15 later in the code produces the following error:

```
dynamic constant assignment
    RENTAL_PERIOD = 15
```

## Let's Practice and Experiment!

Using `irb`, with the code above and your own code, experiment with the following questions:

- How do you create and assign a value to a constant variable?
- How do you read a constant variable?
- If you close and re-open irb, does it still have access to old constants?
- If you define a new method, can it access the constant?

### !challenge

* type: multiple-choice
* id: 19f61af8-92ee-4405-a962-90dd4808a71f
* title: Constants

##### !question

True or false: I can reassign the value of a constant.

##### !end-question

##### !options

* True
* False

##### !end-options

##### !answer

* False

##### !end-answer

##### !hint

* The question specifies "reassignment."

##### !end-hint

### !end-challenge

### !challenge

* type: multiple-choice
* id: 7a2d31a8-bb04-4aa9-aae6-9d28e2fe0d1d
* title: Constant Variables

##### !question

True or False: In Ruby, constants have a different naming convention compared to local variables.

##### !end-question

##### !options

* True. Constants are named with snake_case and local variables are named with camelCase.
* True. Constants are named with CAPS and local variables are named with sanke_case.
* False. Constants and local variables are both named with camelCase.

##### !end-options

##### !answer

* True. Constants are named with CAPS and local variables are named with sanke_case.

##### !end-answer

### !end-challenge


## Summary

In summary, we can use constants to define variables that should not be reassigned.

Understanding how to use variables must also be tied with our understanding of scope.

We'll be learning about other types of variables in the coming days and weeks.