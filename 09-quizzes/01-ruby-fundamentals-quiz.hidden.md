# Ruby Fundamentals Assessment

Welcome to your first content assessment! The questions that follow are an (inherently imperfect) attempt to gauge your understanding of the material we have covered so far. Treat the results as a measuring stick, with any missed problems as an opportunity for growth. 

Remember: Ada doesn't care about the percent correct, we care about helping you learn the material fully.

### !challenge

* type: short-answer
* id: db99cb41-c1ca-489d-b6d5-f3e369da120b
* title: Variables
* points: 1
* topics: variables, ruby

##### !question
Provide the value from the following code segment:

```ruby
a = "moo"
b = "quack"
c = "buzz"
a = b
a 
```
##### !end-question

##### !placeholder
What is the last value returned by the above?
##### !end-placeholder

##### !answer
"quack"
##### !end-answer

### !end-challenge

Match the value of the variable `pet` with the resulting puts statements from the following block of code:

```ruby
if pet == "dog"
  puts "woof"
elsif pet == "cat"
  puts "here kitty, kitty"
else
  puts "pet sounds"
end
```
### !challenge

* type: multiple-choice
* id: 8e5e811c-17c4-435c-ae5d-f722b3c2326e
* title: Conditionals
* points: 1
* topics: ruby, conditionals

##### !question

```ruby
pet = :dog
```

##### !end-question

##### !options

* "woof"
* "pet sounds"
* "here kitty, kitty"

##### !end-options

##### !answer

* "pet sounds"

##### !end-answer
### !end-challenge
### !challenge

* type: multiple-choice
* id: c207787d-3147-40f1-847b-4e462d61b3df
* title: Conditionals
* points: 1
* topics: ruby, conditionals

##### !question

```ruby
pet = "dog"
```
##### !end-question

##### !options

* "woof"
* "pet sounds"
* "here kitty, kitty"

##### !end-options

##### !answer

* "woof"

##### !end-answer
### !end-challenge
### !challenge

* type: multiple-choice
* id: 83a9cccf-0b16-48f4-a67d-abca06307d00
* title: Conditionals
* points: 1
* topics: ruby, conditionals

##### !question

```ruby
pet = "cat"
```

##### !end-question

##### !options

* "woof"
* "pet sounds"
* "here kitty, kitty"

##### !end-options

##### !answer

* "here kitty, kitty"

##### !end-answer
### !end-challenge

### !challenge

* type: number
* id: 0aad3fb2-f175-4cb1-bb6c-35ecb321d25e
* title: Arrays
* points: 1
* topics: ruby, arrays

##### !question

Fill in the blank for the result of the following code.

```ruby
x = [7, 9, 2, 13, 99]
x[2] + x[3]

=>________
```

##### !end-question

##### !placeholder

What is the result of x[2] + x[3]

##### !end-placeholder

##### !answer

15

##### !end-answer
### !end-challenge

### !challenge

* type: number
* id: e0c8c9cc-1357-4b17-8e41-14709de89bf0
* title: Arrays
* points: 1
* topics: arrays, ruby

##### !question

Based on the code, fill in the blank below.

```ruby
alist = ["Ada", "Grace"]
alist << "You"

alist.length

=>____________
```

##### !end-question

##### !placeholder

What is the final value of alist.length?

##### !end-placeholder

##### !answer

3

##### !end-answer
### !end-challenge

### !challenge

* type: short-answer
* id: 8f231c34-8748-4950-846b-292fa8f22462
* title: Hashes
* points: 1
* topics: ruby, hashes

##### !question
Based on the following code, fill in the blank

```ruby
cities = {}
cities[:spokane] = "Washington"
cities[:philadelphia] = "Pennsylvania"
cities[:spokane]

=> _________
```
##### !end-question

##### !placeholder

What does `cities[:spokane]` return?

##### !end-placeholder

##### !answer

"Washington"

##### !end-answer
### !end-challenge

Using the following code, answer the questions below:

```ruby
sample = {
  a: 16,
  b: "Ada",
  c: [1, 3, 5],
  d: :ruby
}
```

### !challenge

* type: multiple-choice
* id: 5a9c36db-7f6a-481c-a891-ed8b4643315a
* title: Hashes
* points: 1
* topics: ruby, hashes, data types

##### !question

What is the data type of `sample[:a]`?

##### !end-question

##### !options
* Symbol
* String
* Integer
* Array
##### !end-options

##### !answer

* Integer

##### !end-answer

### !end-challenge

### !challenge

* type: multiple-choice
* id: 4fe16621-cf7b-4b26-b9ca-8cc55af99ec7
* title: Hashes
* points: 1
* topics: ruby, hashes, data types

##### !question

What is the data type of `sample[:b]`?

##### !end-question

##### !options
* Symbol
* String
* Integer
* Array
##### !end-options

##### !answer

* String

##### !end-answer

### !end-challenge

### !challenge

* type: multiple-choice
* id: 68a5d610-648c-4391-8b59-c3be81be8af7
* title: Hashes
* points: 1
* topics: ruby, hashes, data types

##### !question

What is the data type of `sample[:c]`?

##### !end-question

##### !options
* Symbol
* String
* Integer
* Array
##### !end-options

##### !answer

* Array

##### !end-answer

### !end-challenge

### !challenge

* type: multiple-choice
* id: 211c06c4-433c-4a00-9d85-249aed7335f0
* title: Hashes
* points: 1
* topics: ruby, hashes, data types

##### !question

What is the data type of `sample[:d]`?

##### !end-question

##### !options
* Symbol
* String
* Integer
* Array
##### !end-options

##### !answer

* Symbol

##### !end-answer

### !end-challenge

### !challenge

* type: multiple-choice
* id: 632e5713-f5d9-422a-b203-38e15ed3c23f
* title: Iterators
* points: 1
* topics: ruby, iterators, arrays

##### !question

What will the following code print out?

```ruby
[5, 6, 7].each do |e|
  puts e * 2
end
```

##### !end-question

##### !options

* 10<br>12
* 5<br>6<br>7
* 5<br>6
* 10<br>12<br>14

##### !end-options

##### !answer

* 10<br>12<br>14

##### !end-answer

### !end-challenge
### !challenge

* type: multiple-choice
* id: 85eabb28-54b4-412b-9938-37ca6a038d18
* title: Iterators
* points: 1
* topics: ruby, iterators, arrays

##### !question

What will the following code print out?

```ruby
animals = ["cat", "camel", "canary", "caterpillar"]
animals.each do |animal|
  puts animal.length
end
```

##### !end-question

##### !options

* 4<br>4<br>4<br>4
* 2<br>4<br>5<br>10
* 3<br>5<br>6<br>11
* 2<br>4<br>5

##### !end-options

##### !answer

* 3<br>5<br>6<br>11

##### !end-answer

### !end-challenge

Use the code below to answer the following questions:

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

### !challenge

* type: number
* id: 3e9bd749-66f9-40cb-8193-07da1c64bd7e
* title: While Loops
* points: 1
* topics: ruby, while, loops

##### !question

How many times will the loop above execute?

##### !end-question

##### !placeholder

How many iterations?

##### !end-placeholder

##### !answer

10

##### !end-answer
### !end-challenge
### !challenge

* type: number
* id: e861f6cd-a1aa-4883-ac7b-570a56fdce5a
* title: While Loops
* points: 1
* topics: ruby, while, loops

##### !question

After all iterations of the loop have executed, what is the value of the following code?

```ruby
result.length
```
##### !end-question

##### !placeholder

What is the value of `result.length`?

##### !end-placeholder

##### !answer
9
##### !end-answer
### !end-challenge
### !challenge

* type: number
* id: 78d4fd94-9f59-4773-9088-269516ddc3e7
* title: While Loops
* points: 1
* topics: ruby, while, loops

##### !question

After all iterations of the loop have executed, what is the value of the following code?

```ruby
result[1]
```
##### !end-question

##### !placeholder

What is the value of result[1]?

##### !end-placeholder

##### !answer
1
##### !end-answer
### !end-challenge

Using the code below, answer the following questions:

```ruby
def max(x, y)
  if x > y
    return x
  else
    return y
  end
end

result = max(8, 12)
puts "The result is #{result}"
```

### !challenge

* type: multiple-choice
* id: f2d9a590-755e-40fa-8de4-d606234398b2
* title: Methods
* points: 1
* topics: ruby, methods, vocab

##### !question

Which of the following best describes the snippet below? Refer to the code above.

```ruby
max(x, y)
```

##### !end-question

##### !options

* method signature
* method invocation
* parameters
* return value

##### !end-options

##### !answer

* method signature

##### !end-answer
### !end-challenge
### !challenge

* type: multiple-choice
* id: 63dc1099-43ad-49f9-830f-3730f0186e68
* title: Methods
* points: 1
* topics: ruby, methods, vocab

##### !question

Which of the following best describes the snippet below? Refer to the code above.

```ruby
x, y
```

##### !end-question

##### !options

* method signature
* method invocation
* parameters
* return value

##### !end-options

##### !answer

* parameters

##### !end-answer
### !end-challenge

### !challenge

* type: multiple-choice
* id: 24b2bb7a-f17f-42d3-bfab-6cc3af345135
* title: Methods
* points: 1
* topics: ruby, methods, vocab

##### !question

Which of the following best describes the snippet below? Refer to the code above.

```ruby
max(8, 12)
```

##### !end-question

##### !options

* method signature
* method invocation
* parameters
* return value

##### !end-options

##### !answer

* method invocation

##### !end-answer
### !end-challenge


### !challenge

* type: multiple-choice
* id: b7946df3-269e-460e-8c84-a048475095e2
* title: Methods
* points: 1
* topics: ruby, methods, vocab

##### !question

Which of the following best describes the snippet below? Refer to the code above.

```ruby
return x
```

##### !end-question

##### !options

* method signature
* method invocation
* parameters
* return value

##### !end-options

##### !answer

* return value

##### !end-answer
### !end-challenge

### !challenge

* type: short-answer
* id: 4ac5ce76-4ba6-4985-a8a3-15c2700fcced
* title: Methods
* points: 1
* topics: ruby, methods

##### !question

What does the `puts` method return?

##### !end-question

##### !placeholder

Enter your answer

##### !end-placeholder

##### !answer

nil

##### !end-answer
### !end-challenge
