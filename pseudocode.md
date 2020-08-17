# How to Pseudocode

## Learning Goals

By the end of this lesson, we will be able to...

- Define pseudocode
- Explain why pseudocode is an important step of coding
- Apply writing pseudocode as a step to writing functional code

## Introduction

When we receive a programming challenge, the process is usually this, right?

1. Read the problem
2. Write the solution in Ruby code

Nope! Not quite.

Really, the process includes:

1. Read the problem
2. Clarify the problem with questions
3. Think through your solution with ideas, notes, comments, explanations, and tasks left to do more research on
4. Write parts of the solution in Ruby code
5. Repeat steps 3-5

As our programs become more complicated, it is harder to know where to get started, break down the steps that need to be done and and still write clean code.

By breaking down the problem before writing code we can better prioritize what needs to be done and the steps involved to arrive at the minimum of what is needed to solve the problem.

Today we will focus on steps 3-5, and a tool that can help us accomplish these steps: pseudocde.

## What is Pseudocode?

**Pseudocode** is a term that describes **non-working, non-functioning lines of code intended to give explanation and meaning to developers.** It is code that is not intended to be part of the final solution/program.

Observe the following examples. Try to figure out the goal of each block of code. Which block of code is easier to read and understand the goal?

```ruby
fruits = ['apples', 'oranges', 'bananas', 'canned o-shaped spaghetti noodles']
grocery_list = []
loop through each fruit in fruits
  if the fruit is not 'canned o-shaped spaghetti noodles'
    then add the fruit to grocery_list
  end the conditional if
end the loop
```

```ruby
fruits = ['kiwis', 'mangos', 'bananas']
fruit_basket = []

fruits.each do |fruit|
  fruit_basket << fruit
end

puts "Successful!" if fruits.length == fruit_basket.length
```

<details>

  <summary>
    What did you think?
  </summary>

  Overall, it should be easier to read Example 1 and understand its goal because it has pseudocode, or understandable descriptions of code.

  Example 2 is full of working, functional code. However, sometimes, Example 2 is easier to read, because it's less information to parse through. However, this requires developers to know the precise syntax at the time of writing it.
</details>

Pseudocode allows you to think through the logic of a solving a problem before implementing functioning code.

### More Examples

Given the following problem, observe all of these different and valid examples of pseudocode.

Calculate the average of the numbers 3, 5, 6, 15, and 27 using a loop.

```ruby
make a numbers variable, and it is an array
make a sum variable, and it starts with a value of 0

loop through each number in numbers array
  add number to sum
end the loop

the average is sum / number
```

```ruby
// numbers is numbers from prompt
numbers = [3, 5, 6, 15, 27]
sum = 0

loop each number in numbers
  increment sum by number amount with sum += number
end

average = sum / number
```

### Pseudocode Can Be Any Style, and Your Style!

There are no rules about pseudocode and what it should look like! Therefore, all of these are valid examples of pseudocode.

The only rule is that **pseudocode should be deleted from your final solution, to ensure that your final solution runs correctly.**

It's more important to integrate the pseudocode _process_ rather than worry about pseudocode style.

## Benefits of Pseudocode

- Makes Changes Easier
- Documents Your Work
- Catch bugs and incorrect logic sooner and faster
- Supports iterative refinement

By integrating pseudocode into your coding process, you'll be able to plan, communicate, and debug your code better and more quickly.

Adding pseudocode doesn't need to be a long, bulky, or hard process. It can take either a few seconds or a few minutes.

## Applying the Process

Remember the process of working on code from above?

1. Read the problem
2. Clarify the problem with questions
3. Think through your solution with ideas, notes, comments, explanations, and tasks left to do more research on
4. Write parts of the solution in Ruby code
5. Repeat steps 3-5 until you have a solution

After doing steps 1 and 2, you should do step #3 and use pseudocode to think through your solution with ideas, notes, and comments.

In the two examples below, you should witness three things:

1. Pseudocode first
2. Then Ruby code
3. Repeat

### Example 1

Calculate the average of the numbers 3, 5, 6, 15, and 27 using a loop.

```ruby
make a numbers variable, and it is an array
make a sum variable, and it starts with a value of 0

add each number in numbers to sum using a loop

the average is sum / number
```

```ruby
make a numbers variable, and it is an array
make a sum variable, and it starts with a value of 0

loop through each number in numbers array
  add number to sum
end the loop

the average is sum / number
```

```ruby
// numbers is numbers from prompt
numbers = [3, 5, 6, 15, 27]
sum = 0

loop through each number in numbers array
  increment sum by number amount with sum += number
end

average = sum / number
```

```ruby
numbers = [3, 5, 6, 15, 27]
sum = 0

numbers.each do |number|
  sum += number
end

average = sum / number
```

### Example 2

Count the number of even numbers from the numbers 3, 5, 6, 15, and 27 using a loop

```ruby
make numbers variable: array, 3, 5, 6, 15, and 27 from prompt
make number of even numbers variable: start at 0

loop through each number in numbers
  if the number is even
    then add 1 to number of even numbers
  else
    then the number is odd
    dont do anything
  end else
end loop
```

```ruby
numbers = array, 3, 5, 6, 15, and 27
num_of_even_nums = start at 0

numbers.each |number| do
  if the number is even
    then add 1 to number of even numbers
  else
    then the number is odd
    dont do anything
  end else
end
```

```ruby
numbers = [3, 5, 6, 15, 27]
num_of_even_nums = 0

numbers.each |number| do
  if number % 2 == 0
    then add 1 to number of even numbers
  else
    then the number is odd
    dont do anything
  end
end
```

```ruby
numbers = [3, 5, 6, 15, 27]
num_of_even_nums = 0

numbers.each |number| do
  if number % 2 == 0
    num_of_even_nums += 1
  end
end
```

## Additional Resources
- [Khan Academy Video: Planning with Pseudo-code](https://www.khanacademy.org/computing/computer-programming/programming/good-practices/p/planning-with-pseudo-code)
- [Wikihow: How to Write Pseudocode](http://www.wikihow.com/Write-Pseudocode)