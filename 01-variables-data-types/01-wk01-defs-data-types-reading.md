# Exercise: Definitions, Data Types, and Reading Code

## Introduction

Welcome! Today we will jump into our curriculum through this set of questions.

There are three sections to this:

- Definitions
- Data Types
- Reading Code

Use this process throughout:

1. Try answering the question without your notes.
1. Then, try answering the question using your notes, resources, the Internet, Google, Stack Overflow, etc.
1. Try answering the question by running the code in a new Ruby file, using `irb`, or using `repl`.
1. Finally, write down any questions you have, and be sure to ask them sometime soon.

Use these questions to inform your learning. Check your answers along the way!

If any question was difficult or had an unexpected answer, use this chance to clarify the answer with yourself, your understanding, and with other classmates.

We will review this material as a group tomorrow.

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






### !challenge

* type: short-answer
* id: 4c7d818d-b3c0-496e-95f1-133747e325b0
* title: Data Types

##### !question

```ruby
list = ["Pikachu", "Bulbasaur", "Squirtle", "Charizard"]
result = list[3]
```

What is the **value** of `result`?

##### !end-question

##### !placeholder

Your answer here

##### !end-placeholder

##### !answer

"Charizard"

##### !end-answer

##### !hint

* Don't forget that all Strings are wrapped with this character...
* In Ruby programming, we will prefer double-quotes (`"`)

##### !end-hint

### !end-challenge






### !challenge

* type: short-answer
* id: 869e596b-012f-44bc-8fd6-bdac3597980b
* title: Data Types

##### !question

```ruby
list = ["Pikachu", "Bulbasaur", "Squirtle", "Charizard"]
result = list[3]
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
* id: abffabd8-105a-4a0e-aaf8-58bfec0642d6
* title: Data Types

##### !question

```ruby
list = ["Pikachu", "Bulbasaur", "Squirtle", "Charizard"]
result = list.length
```

What is the **value** of `result`?

##### !end-question

##### !placeholder

Your answer here

##### !end-placeholder

##### !answer

4

##### !end-answer

### !end-challenge





### !challenge

* type: short-answer
* id: 02bdd796-d56c-4779-b471-a8efb53a0d95
* title: Data Types

##### !question

```ruby
list = ["Pikachu", "Bulbasaur", "Squirtle", "Charizard"]
result = list.length
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
* id: 86f804a0-9e8b-4f30-89ba-164758d4f90d
* title: Data Types

##### !question

```ruby
list = ["Pikachu", "Bulbasaur", "Squirtle", "Charizard"]
result = list.first
```

What is the **value** of `result`?

##### !end-question

##### !placeholder

Your answer here

##### !end-placeholder

##### !answer

"Pikachu"

##### !end-answer

##### !hint

* Don't forget that all Strings are wrapped with this character...
* In Ruby programming, we will prefer double-quotes (`"`)

##### !end-hint

### !end-challenge





### !challenge

* type: short-answer
* id: 398f7018-8883-4a7f-8236-032cf0cac69a
* title: Data Types

##### !question

```ruby
list = ["Pikachu", "Bulbasaur", "Squirtle", "Charizard"]
result = list.first
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
* id: 5525c325-e274-4da3-b6b9-4bd4599abdb5
* title: Data Types

##### !question

```ruby
list = ["Pikachu", "Bulbasaur", "Squirtle", "Charizard"]
result = list[4]
```

What is the **value** of `result`?

##### !end-question

##### !placeholder

Your answer here

##### !end-placeholder

##### !answer

nil

##### !end-answer

##### !hint

Type nil if the answer is nil.

##### !end-hint

##### !explanation

When we access an array by index, and there is no element at that index, we get back `nil`.

##### !end-explanation

### !end-challenge





### !challenge

* type: short-answer
* id: b72c29c1-60a5-4803-a5f9-7fd7332d3d7e
* title: Data Types

##### !question

```ruby
list = ["Pikachu", "Bulbasaur", "Squirtle", "Charizard"]
result = list[4]
```

What is the **data type** of `result`?

##### !end-question

##### !placeholder

Your answer here

##### !end-placeholder

##### !answer

/(Nil|nil)/

##### !end-answer

##### !hint

Type nil if the answer is nil.

##### !end-hint

##### !explanation

When we access an array by index, and there is no element at that index, we get back `nil`.

##### !end-explanation

### !end-challenge





### !challenge

* type: short-answer
* id: 44fbe0a9-7361-4714-97bb-dd1d100f5625
* title: Data Types

##### !question

```ruby
list = ["Pikachu", "Bulbasaur", "Squirtle", "Charizard"]
result = list[-1]
```

What is the **value** of `result`?

##### !end-question

##### !placeholder

Your answer here

##### !end-placeholder

##### !answer

"Charizard"

##### !end-answer

##### !hint

* Don't forget that all Strings are wrapped with this character...
* In Ruby programming, we will prefer double-quotes (`"`)

##### !end-hint

### !end-challenge





### !challenge

* type: short-answer
* id: c59456a0-8983-4323-b516-66902a59d88e
* title: Data Types

##### !question

```ruby
list = ["Pikachu", "Bulbasaur", "Squirtle", "Charizard"]
result = list[-1]
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
* id: b10a8105-d80f-4768-b209-04ad39fc5bbf
* title: Data Types

##### !question

```ruby
pikachu = {
  name: "Pikachu",
  type: :electric,
  species: "Mouse Pokemon",
  height: 0.41,
  weight: 6.0,
  id: 25
}
result = pikachu[:name]
```

What is the **value** of `result`?

##### !end-question

##### !placeholder

Your answer here

##### !end-placeholder

##### !answer

"Pikachu"

##### !end-answer

##### !hint

* Don't forget that all Strings are wrapped with this character...
* In Ruby programming, we will prefer double-quotes (`"`)

##### !end-hint

### !end-challenge





### !challenge

* type: short-answer
* id: 5f8dd78b-2eb9-4f49-acaf-47cddc3363de
* title: Data Types

##### !question

```ruby
pikachu = {
  name: "Pikachu",
  type: :electric,
  species: "Mouse Pokemon",
  height: 0.41,
  weight: 6.0,
  id: 25
}
result = pikachu[:name]
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
* id: 7c3d258f-2b51-43f1-a53f-5f0abce9ca23
* title: Data Types

##### !question

```ruby
pikachu = {
  name: "Pikachu",
  type: :electric,
  species: "Mouse Pokemon",
  height: 0.41,
  weight: 6.0,
  id: 25
}
result = pikachu[:id]
```

What is the **value** of `result`?

##### !end-question

##### !placeholder

Your answer here

##### !end-placeholder

##### !answer

25

##### !end-answer

### !end-challenge



### !challenge

* type: short-answer
* id: 3ce61b68-6ac9-436a-a6ea-bdb2fdb13261
* title: Data Types

##### !question

```ruby
pikachu = {
  name: "Pikachu",
  type: :electric,
  species: "Mouse Pokemon",
  height: 0.41,
  weight: 6.0,
  id: 25
}
result = pikachu[:id]
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
* id: f069e058-84fe-4ff7-b987-1cb9ef7d0332
* title: Data Types

##### !question

```ruby
pikachu = {
  name: "Pikachu",
  type: :electric,
  species: "Mouse Pokemon",
  height: 0.41,
  weight: 6.0,
  id: 25
}
result = pikachu[:mystery_key]
```

What is the **value** of `result`?

##### !end-question

##### !placeholder

Your answer here

##### !end-placeholder

##### !answer

/(nil|Nil)/

##### !end-answer

##### !hint

Type nil if the answer is nil.

##### !end-hint

##### !explanation

When we access a hash by a key, and there is no value at that key, we get back `nil`.

##### !end-explanation

### !end-challenge


### !challenge

* type: short-answer
* id: fcdb9708-4ced-41a3-ab77-eaf7b88069f8
* title: Data Types

##### !question

```ruby
pikachu = {
  name: "Pikachu",
  type: :electric,
  species: "Mouse Pokemon",
  height: 0.41,
  weight: 6.0,
  id: 25
}
result = pikachu[:mystery_key]
```

What is the **data type** of `result`?

##### !end-question

##### !placeholder

Your answer here

##### !end-placeholder

##### !answer

/(nil|Nil)/

##### !end-answer

##### !hint

Type nil if the answer is nil.

##### !end-hint

##### !explanation

When we access a hash by a key, and there is no value at that key, we get back `nil`.

##### !end-explanation

### !end-challenge

## Reading Code

Use this process throughout:

1. Try answering the question without your notes.
1. Then, try answering the question using your notes, resources, the Internet, Google, Stack Overflow, etc.
1. Try answering the question by running the code in a new Ruby file, using `irb`, or using `repl`.
1. Finally, write down any questions you have, and be sure to ask them sometime soon.


### !challenge

* type: short-answer
* id: a99a2413-3e77-4f4d-bd7c-18dd94ef6c7e
* title: Reading Code

##### !question

```ruby
cities = {}
cities[:spokane] = "Washington"
cities[:philadelphia] = "Pennsylvania"

result = cities[:spokane]
```

Describe what the above code is doing.

##### !end-question

##### !placeholder

Your answer here

##### !end-placeholder

##### !answer

/(Hash|hash)/

##### !end-answer

##### !hint

We are looking for your answer to include the name of the data type of `cities`.

##### !end-hint

### !end-challenge


### !challenge

* type: short-answer
* id: ba4ba5f3-7620-47f6-a7a2-5d3e1ab2bc09
* title: Reading Code

##### !question

```ruby
cities = {}
cities[:spokane] = "Washington"
cities[:philadelphia] = "Pennsylvania"

result = cities[:spokane]
```

What is the **value** of `result`?

##### !end-question

##### !placeholder

Your answer here

##### !end-placeholder

##### !answer

"Washington"

##### !end-answer


### !end-challenge


### !challenge

* type: short-answer
* id: 72209bf5-9741-4212-8ff9-75df4107dbf9
* title: Reading Code

##### !question

```ruby
[5, 6, 7].each do |e|
  puts e * 2
end
```

Describe what the above code is doing.

##### !end-question

##### !placeholder

Your answer here

##### !end-placeholder

##### !answer

/(iterate|loop|each)/

##### !end-answer

##### !hint

We are looking for your answer to describe what is happening with `each`.

##### !end-hint


### !end-challenge



### !challenge

* type: short-answer
* id: f6e63fa4-3304-4d51-af44-a17bb1ad84bd
* title: Reading Code

##### !question

```ruby
animals = ["cat", "camel", "canary", "caterpillar"]
animals.each do |animal|
  puts animal.length
end
```

Describe what the above code is doing.

##### !end-question

##### !placeholder

Your answer here

##### !end-placeholder

##### !answer

/(iterate|loop|each)/

##### !end-answer

##### !hint

We are looking for your answer to describe what is happening with `each`.

##### !end-hint


### !end-challenge




### !challenge

* type: short-answer
* id: a620dce8-2c31-4b58-b2af-7ef9bfd42460
* title: Reading Code

##### !question

```ruby
i = 0
result = []
while i < 10
  if i != 5
    result << i
  end

  i = i + 1
end
```
Describe what the above code is doing.

##### !end-question

##### !placeholder

Your answer here

##### !end-placeholder

##### !answer

/(while|loop)/

##### !end-answer

##### !hint

We are looking for your answer to describe what is happening with `while`.

##### !end-hint


### !end-challenge