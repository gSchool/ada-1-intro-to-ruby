# Compound and Complex Conditionals

## Introduction

We can combine the booleans `true` or `false` with conditional statements like `if`. They work together like peanut butter and jelly, and we'll use this all the time!

We can create conditions or **expressions** in programming that start as really complex, but the computer eventually **evaluates** them to a final `true` or `false`.

Programming has many rules to help us know when something (an **expression**) **evalutes** into `true` or `false` ultimately.

These rules are explained below.

## Learning Goals

By the end of this lesson, we will be able to...

- Recognize compound conditionals
- Use the _Truth Table_ & the _Precedence List_ to evaluate a compound condition
- Practice expressing and evaluating complex conditions

## Compound Conditions

A simple comparison looks something like this:

```ruby
52 > 1
```

A computer program will ultimately evaluate this to `true`, because it is **true** that 52 is greater than 1.


Comparisons are often combined. Combinations can take one of two forms, __`&&` (the **and** operator)__ and __`||` (the **or** operator)__. When you combine comparisons with _and_, __both__ comparisons must be `true` for the entire combination to be `true`. By combining with `or`, when __either__ of the comparisons are `true`, the entire combination is `true`:

### Real world example

Imagine you need your morning coffee **and** a good night's sleep to have energy. If you are missing one or the other, then you do not have energy. This is an __&& (and)__ example.

We might express this in Ruby code like this:

```ruby
has_morning_coffee = true
has_good_sleep = true

if (has_morning_coffee && has_good_sleep)
  has_energy = true
end
```

Now imagine you need either an apple **or** a banana in the afternoon for a snack to feel full. If you have at least one of them, then you feel full. This is an __|| (or)__ example.

We might express this in Ruby code like this:

```ruby
has_apple = true
has_banana = true

if (has_apple || has_banana)
  feels_full = true
end
```

### Truth Table

**Every compound conditional eventually evaluates to `true` or `false`.**

So what does the compound conditional `has_morning_coffee && has_good_sleep` evaluate to? It depends on what `has_morning_coffee` and `has_good_sleep` are.

When we need to figure out what a compound conditional evaluates to, we can use the values in the comparison and plug them into the Truth Table diagrams below.

These are strict rules that Ruby, and most programming languages, follows.

| **AND**    | **true**  | **false** |
|-------|-------|-------|
| **true**  | true  | false |
| **false** | false | false |

| **OR**    | **true**  | **false** |
|-------|-------|-------|
| **true**  | true  | true |
| **false** | true | false |


### !callout-info

## Did We Have Good Sleep?

So what does the compound conditional `has_morning_coffee && has_good_sleep` evaluate to?

<br>

To use the truth table, first look at the operator to pick the right table. We're using `&&`, so we use the **AND** table.

<br>

Then, we take the expression on the **left** side of the `&&` and find its value on the **left column**.

<br>

After that, we take the expression on the **right** side and find its value on the **top row**.

<br>

Then we find the intersecting column and row. We see that `has_morning_coffee && has_good_sleep` evaluates to `false` if **either** side is `false`.

<br>

You would follow the same pattern for an `||` conditional.

### !end-callout

### Experiment in irb

The following code block represents 8 separate lines we can run in irb. After we run one individual line, we should see how Ruby evaluates the compound conditional.

You should notice that you get the exact same results as the Truth Table above.

```ruby
true && true   
true && false  
false && true  
false && false 

true || true   
true || false  
false || true  
false || false 
```

<details>
<summary>
Use irb to check your answers or look at the answers hidden here.
</summary>

```ruby
true && true   # => true and true is true
true && false  # => true and false is false
false && true  # => false and true is false
false && false # => false and false is false

true || true   # => true or true is true
true || false  # => true or false is true
false || true  # => false or true is true
false || false # => false or false is false
```
</details>

## Evaluating Compound Conditions: Understanding _Precedence_
Compound comparisons often involve a chain of expressions to be evaluated. Ruby follows strict rules when deciding the order in which expressions are evaluated. These rules can be expressed in terms of their _precedence_. __Operations with a higher _precedence_ are evaluated before operations with lower _precedence_.__ To change the order in which operations are evaluated, add parenthesis `()` around the operations you want evaluated first.

Here is an abbreviated _Precedence List_ from __highest__ to __lowest__ _precedence_:

1. (things inside parentheses)
1. `!`, `unary +`
1. `**`
1. `unary -`
1. `*`, `/`, `%`
1. `+`, `-`
1. `>`, `>=`, `<`, `<=`
1. `<=>`, `==`, `===`
1. `&&`
1. `||`

__Note:__ 

### !callout-secondary

## What the heck is unary + or unary - or <=>
_unary +_ and _unary -_ here means assigning a numeric value (_Integer_ or _Float_) as either positive or negative, e.g. `-5`, `-12.2`, `+30` and `+2.0`. Thus a number with a _unary +_ is functionaly the same as a number without it. (It doesn't actually do anything.)

<br>

The `<=>` operator is a rare operator that most programmers don't use. Feel free to look it up, and also feel free to ignore it

### !end-callout

### !callout-secondary

## Pro-tip: Don't memorize this one, reference it

This precedence list is an example of some knowledge that is good to recognize, take notes of, and learn about. It is not worth memorizing perfectly; programmers will look this up. It also follows [the Order of Operations in mathematics](https://en.wikipedia.org/wiki/Order_of_operations).

### !end-callout

### Parse Trees

When evaluating a complex compound conditional expression, it is nice to visualize the resulting expression. One way to do this is by using a [parse tree](https://en.wikibooks.org/wiki/Introduction_to_Programming_Languages/Precedence_and_Associativity). A parse tree will show the way the result of higher precedence operators are passed to later operations, until you have a result.

Here is an example parse tree for the expression `4 + 1 % 2 > 2 * 3 && true`

![Parse Tree Example for (4 + 1 % 2 > 2 * 3 && true)](images/condition-parse-tree.png)

Now create a parse tree for the expression `5 - 2**3 < 0 && (true || false)`.

Compare your solution with you neighbor.


## Condition Evaluation Exercise
Determine the final `boolean` output of these compound conditions. Refer to the _Truth Table_ and _Precedence List_ in the textbook resource.

When in doubt, write down your work on paper.

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: number
* id: 0eb45ed5-97f3-4b21-a038-571e21e2e261
* title: Question 1

##### !question

For the following three statements, determine how many of them return `true`: 
```ruby
5 > 4 && false
```
```ruby
true && 5 * 2 > 3 + 3 * 2
```
```ruby
true && 5 * 2 > (3 + 3) * 2
```

##### !end-question

##### !placeholder

How many of the above would return true?

##### !end-placeholder

##### !answer

1

##### !end-answer
### !end-challenge

### !challenge

* type: multiple-choice
* id: 21c6768c-e05c-481d-9ef6-2995200c5df9
* title: Question 2

##### !question

Which of the following return 'true'?

```ruby
true && true || false
```
```ruby
true && (true || false)
```

##### !end-question

##### !options

* true && true || false
* true && (true || false)
* both
* neither

##### !end-options

##### !answer

* both

##### !end-answer
### !end-challenge

### !challenge

* type: multiple-choice
* id: 9a436ac0-ba91-4ac3-8150-88a248d18606
* title: Question 3
<!-- * points: [1] (optional, the number of points for scoring as a checkpoint) -->
<!-- * topics: [python, pandas] (optional the topics for analyzing points) -->

##### !question

Which of the following return `true`?

```ruby
false && false || true
```
```ruby
false && (false || true)
```

##### !end-question

##### !options

* false && false || true
* false && (false || true)
* both
* neither

##### !end-options

##### !answer

* false && false || true

##### !end-answer


##### !hint
This problem might take a second! Remember the order of operations.
##### !end-hint
### !end-challenge

### !challenge

* type: number
* id: 2d892c2b-49e7-4e6b-ba08-60fb809171c6
* title: Question 4
##### !question

How many of the following statements resolve to `true`?

```ruby
4 == "4"
```
```ruby
4 == "4" || 4 == 4
```
```ruby
10 % 3 == 10.0 % 3
```

##### !end-question

##### !placeholder

How many of the above resolve to true?

##### !end-placeholder

##### !answer
2
##### !end-answer
### !end-challenge

### !challenge

* type: multiple-choice
* id: f68d6b7c-4127-42cf-a49e-d2fd118caf30
* title: Question 5
<!-- * points: [1] (optional, the number of points for scoring as a checkpoint) -->
<!-- * topics: [python, pandas] (optional the topics for analyzing points) -->

##### !question

Which of the following return `true`?

```ruby
10 * (5 / 2.0) == 10.0 * (5 / 2)
```
```ruby
10 * 5 / 2 > 10 * (5 / 2)
```
##### !end-question

##### !options

* 10 * (5 / 2.0) == 10.0 * (5 / 2)
* 10 * 5 / 2 > 10 * (5 / 2)
* both
* neither

##### !end-options

##### !answer

* 10 * 5 / 2 > 10 * (5 / 2)

##### !end-answer

##### !hint 
Remember, math with integers doesn't work the same way as math with decimal numbers!
##### !end-hint 
### !end-challenge

### !challenge

* type: multiple-choice
* id: 5a503a07-40e2-4b6e-93d0-c55adcab6b22
* title: Question 6
<!-- * points: [1] (optional, the number of points for scoring as a checkpoint) -->
<!-- * topics: [python, pandas] (optional the topics for analyzing points) -->

##### !question

Which of the following statements return `true`?

```ruby
2 * 2 ** 3 == (2 * 2) ** 3
```
```ruby
(10 - 4) < +6 || -(2 * -4) > 0
```

##### !end-question

##### !options
* 2 * 2 ** 3 == (2 * 2) ** 3
* (10 - 4) < +6 || -(2 * -4) > 0
* both
* neither
##### !end-options

##### !answer
* (10 - 4) < +6 || -(2 * -4) > 0
##### !end-answer
### !end-challenge
