# Enumerables

## Learning Goals

By the end of this lesson you will be able to

- Explain about the _module_ `Enumerable`
- Explain how `Enumerable` works with Arrays and Hashes
- Write code using the `Enumerable` built-in method `map`

## What is `Enumerable`?

Enumeration is defined as the action of mentioning a number of things one by one.

`Enumerable` is a _module_ that is _mixed in_ to both `Array` and `Hash` types in Ruby.

At this very moment, we will not go into the full definition of a module. Instead, we'll work with an abbreviated definition: Ruby has a built-in set of code and methods accessed via `Enumerable`. Arrays and Hashes by default have and can use the methods defined within `Enumerable`.

`Enumerable` itself describes a set of methods that can be used on "things that can be counted." More specifically, it is likely that Ruby things that have a `.each` method on them can also access the other Enumerable methods.

`Enumerable` provides us with lots of methods similar to `.each` that do _iteration_ (similar to `.each`) AND MORE!

## `map`

Sometimes when we have an array of elements, we want a new array that is based off of the original array, but the new array's elements are slightly and consistently different.

Let's think of an example situation. Let's say you have an array of strings that represent food items `food_items`, and you want to make a new array `spicy_food_items` of all of those food items with `"spicy"` before each item name.

How would you do it? Talk through your strategy with your neighbors.

### Initial approach without an `Enumerable` method

You might approach it with using a `.each`:

```ruby
food_items = ['veggie pizza', 'dumplings', 'meatball', 'spumoni']
spicy_food_items = []

food_items.each do |food|
  spicy_food = 'spicy ' + food
  spicy_food_items << spicy_food
end

# spicy_food_items => ["spicy veggie pizza", "spicy dumplings", "spicy meatball", "spicy spumoni"]
```

Let's reflect:

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: short-answer
* id: 6ae63cc8-1b26-4fef-8fbb-61161a484f56
* title: Reflection #1
* points: 1
* topics: enumerables, map

##### !question

Why was iteration a good strategy to handle this problem?

##### !end-question

##### !placeholder



##### !end-placeholder

##### !answer

/.*/

##### !end-answer

<!-- other optional sections -->
<!-- !hint - !end-hint (markdown, users can see after a failed attempt) -->
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
##### !explanation

Because we can repeat the same block of code on each array element and have this loop work for any array of strings.

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: short-answer
* id: 130c63a4-410c-424f-a723-449ff6d2e1b0
* title: Reflection #2
* points: 1
* topics: enumerables, map
  
##### !question

Why did we need a second array `spicy_food_items`? 

##### !end-question

##### !placeholder

##### !end-placeholder

##### !answer

/.*/

##### !end-answer

<!-- other optional sections -->
<!-- !hint - !end-hint (markdown, users can see after a failed attempt) -->
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
##### !explanation

Because we need another array to hold the resulting elements.  With `.each` we cannot edit the elements the original array using `food`, but we can create new strings and shovel them into a new array.

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: short-answer
* id: 8615fc42-7187-4f33-8a42-6519176af99c
* title: Reflection #3
* points: 1
* topics: enumerables, map

##### !question

What was the initial value of `spicy_food_items`, and where was it defined? 

##### !end-question

##### !placeholder


##### !end-placeholder

##### !answer

/.*/

##### !end-answer

<!-- other optional sections -->
<!-- !hint - !end-hint (markdown, users can see after a failed attempt) -->
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
##### !explanation

We create `spicy_food_items` on line 2 and start it off as `[]`.  This way we have an empty array ready before the loop starts to shovel new items into.

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: short-answer
* id: cd19948d-611d-4426-adb5-c2be724ef7ec
* title: Reflection #4
* points: 1
* topics: enumerables, map
  
##### !question

Is there a way to use a `.each` and not have a second array?

##### !end-question

##### !placeholder



##### !end-placeholder

##### !answer

/.*/

##### !end-answer

<!-- other optional sections -->
<!-- !hint - !end-hint (markdown, users can see after a failed attempt) -->
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
##### !explanation

No, because you cannot edit the original array directly using `food`.

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: short-answer
* id: c498a6d9-4b7f-4775-963a-10fdb9c57612
* title: Reflection #5
* points: 1
* topics: enumerables, map
 
##### !question

In the `each` loop, what was the value of the local variable `food`?

##### !end-question

##### !placeholder


##### !end-placeholder

##### !answer

/.*/

##### !end-answer

<!-- other optional sections -->
<!-- !hint - !end-hint (markdown, users can see after a failed attempt) -->
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
##### !explanation

As the loop runs, `food` becomes each element of the array one-by-one.

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: short-answer
* id: 2465c6f8-f4fd-4474-8c65-430d80e9f81e
* title: Reflection #6
* points: 1
* topics: enumerables, map

##### !question

What was the operation we needed to perform on each `food`?

##### !end-question

##### !placeholder


##### !end-placeholder

##### !answer

/.*/

##### !end-answer

<!-- other optional sections -->
<!-- !hint - !end-hint (markdown, users can see after a failed attempt) -->
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
##### !explanation

We perform string concatenation on each `food` in the 5th line.

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

### Refactoring to use `Enumerable`'s `map` method

Let's now take a second to consider an alternative way to solving this problem. Again, we want a new array that is based off of the original array, but the new array's elements are slightly and consistently different.

The `map` method will operate on an array, go through each element in the array, perform some operation defined in a code block for each element on the array, and return an array of the same size with the operation performed for each element.

[This is Ruby's documentation for the `map` method](https://ruby-doc.org/core/Enumerable.html#method-i-map). A skill we will learn as developers is to always check documentation as a source of truth for learning what methods are available, what they do, what they take in as parameters, and what they return.

Let's refactor our code above to use `map` instead of `each`:

```ruby
food_items = ['veggie pizza', 'dumplings', 'meatball', 'spumoni']
spicy_food_items = food_items.map do |food|
  'spicy ' + food
end

# spicy_food_items => ["spicy veggie pizza", "spicy dumplings", "spicy meatball", "spicy spumoni"]
```

Take some time to read the code, and then answer the following questions.

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: short-answer
* id: 0d5c0961-de43-4337-b7f5-3c245a83760a
* title: `map` on arrays #1
* points: 1
* topics: enumerables, map

##### !question

 Where is the the second array `spicy_food_items` defined and assigned a value? How is that different from the `each` loop?

##### !end-question

##### !placeholder



##### !end-placeholder

##### !answer

/.*/

##### !end-answer

<!-- other optional sections -->
<!-- !hint - !end-hint (markdown, users can see after a failed attempt) -->
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
##### !explanation

`spicy_food_items` is assigned on the 2nd line, the same line where the `.map` method is called.  In the `.each` loop we had to 1st define an empty array and then within the `do-end` block we had to shovel new elements into the array.

This implementation is a bit more compact.

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: short-answer
* id: 83d0134a-f3f3-44ed-adfe-95ed7cc1b809
* title: `map` on arrays #2
* points: 1
* topics: enumerables, map

##### !question

The documentation refers to a _block_. Where is the _block_? What is the block doing?

##### !end-question

##### !placeholder


##### !end-placeholder

##### !answer

/.+/

##### !end-answer

<!-- other optional sections -->
<!-- !hint - !end-hint (markdown, users can see after a failed attempt) -->
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
##### !explanation

The _block_ is the code between the `do` and `end`.  That block is a segment of code executed for each element of the array.

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->


<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: short-answer
* id: 3e12ecd7-5714-4d87-b388-bba576fdd8de
* title: `map` on arrays #3
* points: 1
* topics: enumerables, map

##### !question

Why don't we have to shovel `'spicy ' + food` into the second array?

##### !end-question

##### !placeholder


##### !end-placeholder

##### !answer

/.+/

##### !end-answer

<!-- other optional sections -->
<!-- !hint - !end-hint (markdown, users can see after a failed attempt) -->
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
##### !explanation

We do not have to "shovel" elements into the array because the `map` method returns a new array composed of elements from the last value in the `do-end` block.  

So for example if you had.

```ruby
example = [3, 5, 7].map do |num|
  num *= 2
  "Ada Rulez!"
end
```

The `example` array would hold `["Ada Rulez!", "Ada Rulez!", "Ada Rulez!"]` because the value `"Ada Rulez!"` is value of the last line executed in the block

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->


<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: paragraph
* id: ca3145a1-e4d5-4057-b295-4600dc4815b6
* title: `map` on arrays #4
* points: 1
* topics: enumerables, map


##### !question

Describe the similarities and differences between using `.each` and `.map` to solve this problem.

##### !end-question

##### !placeholder


##### !end-placeholder

<!-- other optional sections -->
<!-- !hint - !end-hint (markdown, users can see after a failed attempt) -->
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
##### !explanation 

Some similarities include:

* Both iterate through the whole array
* Both result in the same answer
* Both involve using a `do-while` block

Some differences include

* `map` returns a new array while `each` returns the original array
  * Thus you can assign a variable to the result of the `map`.
* Using `map` results in a more compact solution

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

#### Practice `map` on arrays

Solve this first using an each loop, then, refactor it to use `map`.

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: custom-snippet
* language: ruby
* id: e5ccf9bd-3d12-40d8-beac-3928120eb507
* title: Converting all strings to upcase
* docker_directory_path: /custom-snippets/all-upcase
* points: 1
* topics: enumerables, map

##### !question

Your method is given the following array `greetings`, assign to a new variable `loud_greetings` a new array. In the new array, each element should be like the original array, but all in [upcase (CAPITAL) letters](https://ruby-doc.org/core-2.2.3/String.html#method-i-upcase).  Then `return` `loud_greetings`

```ruby
greetings = ['hello', 'howdy', 'hey there']

# loud_greetings => ["HELLO", "HOWDY", "HEY THERE"]
```

##### !end-question

##### !placeholder

```ruby
# This method takes an array of strings
# It should return an array of those
#   strings all in upcase
def shouted_greetings(greetings)


end
```

##### !end-placeholder

<!-- other optional sections -->
<!-- !hint - !end-hint (markdown, users can see after a failed attempt) -->
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
<!-- !explanation - !end-explanation (markdown, students can see after answering correctly) -->

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->


### Using map with a hash

When using `map` on arrays, we saw that we gave a name to every element in our block:

```ruby
result = ['first element', 'second element', 'third element'].map do |element|
  "#{element.split(' ').first}"
end

# result => ["first", "second", "third"]
```

In the above example, `element` was the name of the local variable that referred to the current element in the iteration.

When using `map` on hashes, in each round of iteration, we look at each key-value pair, and get reference to that key-value pair.

```ruby
meal_plan = {
  breakfast: "waffles",
  lunch: "sandwich",
  dinner: "rice and curry"
}

result = meal_plan.map do |key, value|
  "key: #{key}, value: #{value}"
end

# result => ["key: breakfast, value: waffles", "key: lunch, value: sandwich", "key: dinner, value: rice and curry"]
```

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: multiple-choice
* id: 6ee6fa30-3125-42c1-a6a3-4e501aaf7ddc
* title: `.map` with a Hash #1
* points: 
* topics: enumerables, hashes

##### !question

 What's the data type of `result`? What's the size of `result`? Is it different than what you would expect?

##### !end-question

##### !options

* Hash
* Array
* String
* Number

##### !end-options

##### !answer

* Array
  
##### !end-answer

<!-- other optional sections -->
##### !hint

What do square brackets indicate?  `[]`

##### !end-hint
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
##### !explanation

The `map` method always returns an array, even when looping through a hash.

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: short-answer
* id: efc2e483-c4e0-472a-a07b-fecb08fed273
* title: `.map` with a Hash #2
* points: 1
* topics: map, enumerables

##### !question

What does `key` refer to? What does `value` refer to?

##### !end-question

##### !placeholder


##### !end-placeholder

##### !answer

/.*/

##### !end-answer

<!-- other optional sections -->
<!-- !hint - !end-hint (markdown, users can see after a failed attempt) -->
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
##### !explanation 

Each time `map` iterates through the hash, `key` refers to the key of each key-value pair.  Similarly the `value` refers to the value of each key-value pair.  So on the 1st iteration `key` is `:breakfast` and `value` is `"waffles"`.  On the second iteration they become the next key-value pairs and so on.

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: short-answer
* id: cb42e120-78a5-4baa-a8eb-c17685692123
* title: `.map` with a Hash #3
* points: 1
* topics: map, enumerables

##### !question

If we wanted to refactor the names `key` and `value` to names with more meaning, what could we choose?

##### !end-question

##### !placeholder


##### !end-placeholder

##### !answer

/.*/

##### !end-answer

<!-- other optional sections -->
##### !hint

Maybe meal and...

##### !end-hint
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
##### !explanation

There are a lot of possibilities here, but I would suggest, `meal` and `dish` would make understandable variable names which inform the developer what those values represent beyond key-value pairs in a hash.

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

#### Practice `map` on hashes

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: custom-snippet
* language: ruby
* id: 3d1309fc-7b6d-4331-95ad-e61ed6bf3f04
* title: Using `map`
* docker_directory_path: /custom-snippets/map-on-hashes
* points: 1
* topics: enumerables, map

##### !question

Solve this first using an each loop, then refactoring it to use `map`.

1. Given the following hash `students`, assign to a new variable a new array `formatted_names` and return that variable. In the new array, each element should be hash with the same key, but the value in [upcase (CAPITAL) letters](https://ruby-doc.org/core/String.html#method-i-upcase).

```ruby
students = {
  student_a: 'Dasher',
  student_b: 'Dancer',
  student_c: 'Prancer'
}

# formatted_names => [{:student_a=>"DASHER"}, {:student_b=>"DANCER"}, {:student_c=>"PRANCER"}]
```

##### !end-question

##### !placeholder

```ruby
# This method should return an array of hashes
def format_names(students)
  


end
```


##### !end-placeholder

<!-- other optional sections -->
##### !hint

This method is going to need to go through each key-value pair and return an array of hashes.

##### !end-hint
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
<!-- !explanation - !end-explanation (markdown, students can see after answering correctly) -->

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

## Conclusion on `map`

`map` is a method that `Enumerable` provides that iterates a collection and returns an array of the __results of the block evaluation__. Because `Enumerable` methods apply to arrays and hashes, we can use `.map` and any `Enumerable` method on arrays and hashes.

Whenever you need a second array that is based off of an original first array, consider using `map`.

`Enumerable` has a lot of methods that can solve problems around collections, and we'll look at those later, too, but we find that having a strong understanding of `map` will be a great start.
