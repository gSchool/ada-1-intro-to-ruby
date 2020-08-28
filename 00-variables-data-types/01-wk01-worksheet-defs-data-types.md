# Worksheet: Definitions and Data Types

## Introduction

Welcome! Let's jump into our curriculum through this set of questions.

There are two sections to this worksheet:

- Definitions
- Data Types

Use this process throughout:

1. Try answering the question without your notes.
1. Then, try answering the question using your notes, resources, the Internet, Google, Stack Overflow, etc.
1. Try answering the question by running the code in a new Ruby file, using `irb`, or using `repl`.
1. Finally, write down any questions you have, and be sure to ask them sometime soon.

Use these questions to inform your learning. Check your answers along the way!

If any question was difficult or had an unexpected answer, use this chance to clarify the answer with yourself, your understanding, and with other classmates.

We will review this material as a group.

## Definitions

### !challenge

* type: short-answer
* id: 2c828765-d0e8-4fe0-a0f3-ac4f10ade569
* title: Define "Variable"

##### !question

Imagine that you are teaching a 5 year old. Define "variable" using your own words. Use the words "variable," "value," and "assign" at least once.

##### !end-question

##### !placeholder

Your answer here

##### !end-placeholder

##### !answer

/^(?=.*(variable|Variable))(?=.*(value|Value))(?=.*assign).+/

##### !end-answer

##### !hint

Try using the words we asked you to use in your definition!

##### !end-hint

### !end-challenge


### !challenge

* type: short-answer
* id: 35fd7dd1-ec3b-4d87-9d2d-be9a5e885a64
* title: Define "Data Type"

##### !question

Imagine that you are teaching a 5 year old. Define "data type" using your own words. Use the words "variable," "value," and "boolean" at least once.

##### !end-question

##### !placeholder

Your answer here

##### !end-placeholder

##### !answer

/^(?=.*(variable|Variable))(?=.*(value|Value))(?=.*(boolean|Boolean)).+/

##### !end-answer

##### !hint

Try using the words we asked you to use in your definition!

##### !end-hint

### !end-challenge


### !challenge

* type: short-answer
* id: da9b791b-e2f8-49c1-b82e-cca894afd050
* title: Define "Array"

##### !question

Imagine that you are teaching a 5 year old. Define "array" using your own words. Use the words "type," "contains," and "length" at least once.

##### !end-question

##### !placeholder

Your answer here

##### !end-placeholder

##### !answer

/^(?=.*(type|Type))(?=.*contains)(?=.*length).+/

##### !end-answer

##### !hint

Try using the words we asked you to use in your definition!

##### !end-hint

### !end-challenge






### !challenge

* type: short-answer
* id: 721c9adc-d678-4671-a8db-38eca37adca0
* title: Define "Hash"

##### !question

Imagine that you are teaching a 5 year old. Define "hash" using your own words. Use the words "key," "value," and "pair" at least once.

##### !end-question

##### !placeholder

Your answer here

##### !end-placeholder

##### !answer

/^(?=.*(key|Key))(?=.*(value|Value))(?=.*(pair|Pair)).+/

##### !end-answer

##### !hint

Try using the words we asked you to use in your definition!

##### !end-hint

### !end-challenge


## Data Types

Use this process throughout:

1. Try answering the question without your notes.
1. Then, try answering the question using your notes, resources, the Internet, Google, Stack Overflow, etc.
1. Try answering the question by running the code in a new Ruby file, using `irb`, or using `repl`.
1. Finally, write down any questions you have, and be sure to ask them sometime soon.

### !challenge

* type: multiple-choice
* id: ff9a08ac-da7a-4f0b-a27e-db63d75bdd91
* title: Data Types

##### !question

In Ruby, data can have the data type of any of the following _except_:

##### !end-question

##### !options

* Symbol
* Boolean
* Integer
* Output
* Float
* Array
* Hash

##### !end-options

##### !answer

* Output

##### !end-answer

### !end-challenge

### !challenge

* type: short-answer
* id: 56576c3e-6d72-4f42-b652-3d3d52f17c30
* title: Data Types

##### !question

```ruby
num = 27
result = num + 5
```

What is the **value** of `result`?

##### !end-question

##### !placeholder

Your answer here

##### !end-placeholder

##### !answer

32

##### !end-answer

### !end-challenge


### !challenge

* type: short-answer
* id: 2b8d3120-96ea-40a8-984b-3c47865b0f61
* title: Data Types

##### !question

```ruby
num = 27
result = num + 5
```

What is the **data type** of `result`?

##### !end-question

##### !placeholder

Your answer here

##### !end-placeholder

##### !answer

/(Integer|integer)/

##### !end-answer

##### !hint

We are looking for something more specific than "Number" or "Numeric"

##### !end-hint

### !end-challenge




### !challenge

* type: short-answer
* id: c6a842c4-5c76-471e-b5de-de77f8d3efc5
* title: Data Types

##### !question

```ruby
num = 2
num = num + num + 2
result = num
```

What is the **value** of `result`?

##### !end-question

##### !placeholder

Your answer here

##### !end-placeholder

##### !answer

6

##### !end-answer

### !end-challenge





### !challenge

* type: short-answer
* id: 8353977f-2051-4ab3-9169-7c8205afd166
* title: Data Types

##### !question

```ruby
num = 2
num = num + num + 2
result = num
```

What is the **data type** of `result`?

##### !end-question

##### !placeholder

Your answer here

##### !end-placeholder

##### !answer

/(Integer|integer)/

##### !end-answer

##### !hint

We are looking for something more specific than "Number" or "Numeric"

##### !end-hint

### !end-challenge




### !challenge

* type: short-answer
* id: 5da4a034-7ad5-4fa2-b78a-a6a1f3b46748
* title: Data Types

##### !question

```ruby
num = "4"
num = num + num
result = num
```

What is the **value** of `result`?

##### !end-question

##### !placeholder

Your answer here

##### !end-placeholder

##### !answer

"44"

##### !end-answer

##### !hint

* Don't forget that all Strings are wrapped with this character...
* In Ruby programming, we will prefer double-quotes (`"`)

##### !end-hint

### !end-challenge





### !challenge

* type: short-answer
* id: d3db1bd3-2fc5-42aa-ba80-32b36e0c5e1a
* title: Data Types

##### !question

```ruby
num = "4"
num = num + num
result = num
```

What is the **data type** of `result`?

##### !end-question

##### !placeholder

Your answer here

##### !end-placeholder

##### !answer

/(String|string)/

##### !end-answer

### !end-challenge




### !challenge

* type: short-answer
* id: 295ad3d2-c4e6-4c65-8b66-e3e9bd0a1aae
* title: Data Types

##### !question

```ruby
cool_thing = "dinosaur"
awesome_thing = "astronaut"
rad_thing = cool_thing + " " + awesome_thing
result = rad_thing
```

What is the **value** of `result`?

##### !end-question

##### !placeholder

Your answer here

##### !end-placeholder

##### !answer

"dinosaur astronaut"

##### !end-answer

##### !hint

* Don't forget that all Strings are wrapped with this character...
* In Ruby programming, we will prefer double-quotes (`"`)

##### !end-hint

### !end-challenge





### !challenge

* type: short-answer
* id: a605f74e-82ba-43f4-acee-8b34cbfd3588
* title: Data Types

##### !question

```ruby
cool_thing = "dinosaur"
awesome_thing = "astronaut"
rad_thing = cool_thing + " " + awesome_thing
result = rad_thing
```

What is the **data type** of `result`?

##### !end-question

##### !placeholder

Your answer here

##### !end-placeholder

##### !answer

/(String|string)/

##### !end-answer

### !end-challenge



### !challenge

* type: short-answer
* id: 8aa7faeb-359a-4a25-82a0-8e3e45473a5e
* title: Data Types

##### !question

```ruby
num = 2
num = num * num
num = num * num
result = num
```

What is the **value** of `result`?

##### !end-question

##### !placeholder

Your answer here

##### !end-placeholder

##### !answer

16

##### !end-answer

### !end-challenge





### !challenge

* type: short-answer
* id: 1091818c-2a90-4887-9658-d3d6328b75c9
* title: Data Types

##### !question

```ruby
num = 2
num = num * num
num = num * num
result = num
```

What is the **data type** of `result`?

##### !end-question

##### !placeholder

Your answer here

##### !end-placeholder

##### !answer

/(Integer|integer)/

##### !end-answer

##### !hint

We are looking for something more specific than "Number" or "Numeric"

##### !end-hint

### !end-challenge




### !challenge

* type: short-answer
* id: fb90bd8d-c818-487e-9cec-68a593de0d64
* title: Data Types

##### !question

```ruby
num = 27
result = num % 3
```

What is the **value** of `result`?

##### !end-question

##### !placeholder

Your answer here

##### !end-placeholder

##### !answer

0

##### !end-answer

### !end-challenge



### !challenge

* type: short-answer
* id: 124e2a3e-3cfa-4171-ab69-f3a254b87f31
* title: Data Types

##### !question

```ruby
num = 27
result = num % 3
```

What is the **data type** of `result`?

##### !end-question

##### !placeholder

Your answer here

##### !end-placeholder

##### !answer

/(Integer|integer)/

##### !end-answer

##### !hint

We are looking for something more specific than "Number" or "Numeric"

##### !end-hint

### !end-challenge





### !challenge

* type: short-answer
* id: f9fd2a2e-e010-48d2-b1d9-a9189a7dba4b
* title: Data Types

##### !question

```ruby
num = 100
num = num / 2
num = num / 2
num = num / 2
result = num
```

What is the **value** of `result`?

##### !end-question

##### !placeholder

Your answer here

##### !end-placeholder

##### !answer

12

##### !end-answer

### !end-challenge





### !challenge

* type: short-answer
* id: 784f23bc-8062-442d-bcd7-3257b633919e
* title: Data Types

##### !question

```ruby
num = 100
num = num / 2
num = num / 2
num = num / 2
result = num
```

What is the **data type** of `result`?

##### !end-question

##### !placeholder

Your answer here

##### !end-placeholder

##### !answer

/(Integer|integer)/

##### !end-answer

##### !hint

We are looking for something more specific than "Number" or "Numeric"

##### !end-hint

### !end-challenge







### !challenge

* type: short-answer
* id: a14ced62-a7f3-440a-81a0-b5d33db44698
* title: Data Types

##### !question

```ruby
num = 100.0
num = num / 2
num = num / 2
num = num / 2
result = num
```

What is the **value** of `result`?

##### !end-question

##### !placeholder

Your answer here

##### !end-placeholder

##### !answer

12.5

##### !end-answer

### !end-challenge





### !challenge

* type: short-answer
* id: 0dffcb16-f850-4487-9778-edcd227592ec
* title: Data Types

##### !question

```ruby
num = 100.0
num = num / 2
num = num / 2
num = num / 2
result = num
```

What is the **data type** of `result`?

##### !end-question

##### !placeholder

Your answer here

##### !end-placeholder

##### !answer

/(Float|float)/

##### !end-answer

##### !hint

We are looking for something more specific than "Number" or "Numeric"

##### !end-hint

### !end-challenge







### !challenge

* type: short-answer
* id: 942c18d1-7c19-4578-8d97-da3480d64238
* title: Data Types

##### !question

```ruby
num = 5.0
num = num * 2 + 3
result = num / 2
```

What is the **value** of `result`?

##### !end-question

##### !placeholder

Your answer here

##### !end-placeholder

##### !answer

6.5

##### !end-answer

### !end-challenge





### !challenge

* type: short-answer
* id: 708cd448-0f01-413e-86f9-3d3ea0dc9673
* title: Data Types

##### !question

```ruby
num = 5.0
num = num * 2 + 3
result = num / 2
```

What is the **data type** of `result`?

##### !end-question

##### !placeholder

Your answer here

##### !end-placeholder

##### !answer

/(Float|float)/

##### !end-answer

##### !hint

We are looking for something more specific than "Number" or "Numeric"

##### !end-hint

### !end-challenge






### !challenge

* type: short-answer
* id: 4015d1c8-9754-48a2-bf5e-a4a57c178609
* title: Data Types

##### !question

```ruby
result = :id
```

What is the **value** of `result`?

##### !end-question

##### !placeholder

Your answer here

##### !end-placeholder

##### !answer

:id

##### !end-answer

### !end-challenge





### !challenge

* type: short-answer
* id: ba545b16-7282-4d58-ac2c-2fb24c4fe4c1
* title: Data Types

##### !question

```ruby
result = :id
```

What is the **data type** of `result`?

##### !end-question

##### !placeholder

Your answer here

##### !end-placeholder

##### !answer

/(Symbol|symbol)/

##### !end-answer

### !end-challenge
