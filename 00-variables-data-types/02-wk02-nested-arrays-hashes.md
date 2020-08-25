# Arrays and Hashes Together: Nesting

<iframe src="https://adaacademy.hosted.panopto.com/Panopto/Pages/Embed.aspx?pid=42b43129-b180-47ad-8588-ac220038fa85&autoplay=false&offerviewer=true&showtitle=true&showbrand=false&start=0&interactivity=all" height="405" width="720" style="border: 1px solid #464646;" allowfullscreen allow="autoplay"></iframe>

## Learning Objectives

By the end of this lesson, we should be able to...

* Store collections of values using arrays and hashes
* Use loops to iterate through an array or hash
* Combine arrays and hashes into more complex data structures

## Review: Hash or Array?

Determine whether you would use an array or a hash to store each of these collections and why.

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: multiple-choice
* id: 2b46a935-cc1c-47a1-a348-bf294684269d
* title: The types of tea you have in your cupboard
<!-- * points: [1] (optional, the number of points for scoring as a checkpoint) -->
* topics: arrays, hashes

##### !question

The types of tea you have in your cupboard.

##### !end-question

##### !options

* Array
* Hash
* Either

##### !end-options

##### !answer

* Array

##### !end-answer

<!-- other optional sections -->
<!-- !hint - !end-hint (markdown, users can see after a failed attempt) -->
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
##### !explanation

A plain list of teas serve best an an array.  If there were other details like calories, caffine content etc, then perhaps a hash or more complicated data structure makes sense. 

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: multiple-choice
* id: 0fe10f6f-76cc-46e6-96ad-6c6e2a3cf7bc
* title: Information about a customer
<!-- * points: [1] (optional, the number of points for scoring as a checkpoint) -->
* topics: arrays, hashes

##### !question

Information about a customer

##### !end-question

##### !options

* Array
* Hash
* Either

##### !end-options

##### !answer

* Hash

##### !end-answer

<!-- other optional sections -->
<!-- !hint - !end-hint (markdown, users can see after a failed attempt) -->
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
##### !explanation

Customer information are collections of different types of information without a particular order and all with different types of meaning.  So it makes sense to use a hash.

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: multiple-choice
* id: 9dcd1a78-7660-4b21-97aa-8ff7a6bcd873
* title: An address
<!-- * points: [1] (optional, the number of points for scoring as a checkpoint) -->
* topics: arrays, hashes

##### !question

An address

##### !end-question

##### !options

* Array
* Hash
* Either

##### !end-options

##### !answer

* Hash

##### !end-answer

<!-- other optional sections -->
<!-- !hint - !end-hint (markdown, users can see after a failed attempt) -->
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
##### !explanation

An address is full of different named types of information: street number, zip code etc.  They also do not have a logical order.  So it makes sense to use a Hash to store address information as a hash.

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->


1. The names of the first 150 pokemon, in order

<!-- ======================= END CHALLENGE ======================= -->

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: multiple-choice
* id: 27bbebae-491d-44f8-ae18-c1d156b68811
* title: The names of the first 150 pokemon, in order
<!-- * points: [1] (optional, the number of points for scoring as a checkpoint) -->
* topics: arrays, hashes

##### !question

The names of the first 150 pokemon, in order

##### !end-question

##### !options

* Array
* Hash
* Either

##### !end-options

##### !answer

* Array

##### !end-answer

<!-- other optional sections -->
<!-- !hint - !end-hint (markdown, users can see after a failed attempt) -->
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
##### !explanation

A list of Pokemon are all items of the same type and they have (in this example) a specific order, so an Array makes sense.

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: multiple-choice
* id: dd5b334a-063a-402e-9d35-b109d4d46e73
* title: All the meals you serve in your restaurant
<!-- * points: [1] (optional, the number of points for scoring as a checkpoint) -->
* topics: arrays, hashes

##### !question

All the meals you serve in your restaurant

##### !end-question

##### !options

* Array
* Hash
* Either

##### !end-options

##### !answer

* Array

##### !end-answer

<!-- other optional sections -->
<!-- !hint - !end-hint (markdown, users can see after a failed attempt) -->
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
##### !explanation

If this is just a list of meals, then an Array makes sense.  There are no obvious key-value pairs.

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: multiple-choice
* id: cd180b3a-cc40-4473-b033-4da44e088544
* title: All the meals you serve in your restaurant
<!-- * points: [1] (optional, the number of points for scoring as a checkpoint) -->
* topics: arrays, hashes

##### !question

Details about a meal served by your restaurant, such as name, price, and allergy info

##### !end-question

##### !options

* Array
* Hash
* Either

##### !end-options

##### !answer

* Hash

##### !end-answer

<!-- other optional sections -->
<!-- !hint - !end-hint (markdown, users can see after a failed attempt) -->
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
##### !explanation

Since all the details make sense as key-value pairs and each item is of different types, a hash would make sense.

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: multiple-choice
* id: 68af8bf9-121f-43ab-9ea5-b90c9a093c97
* title:  Details about all the meals your restaurant serves
<!-- * points: [1] (optional, the number of points for scoring as a checkpoint) -->
* topics: arrays, hashes

##### !question

 Details about all the meals your restaurant serves

##### !end-question

##### !options

* Array
* Hash
* Combination

##### !end-options

##### !answer

* Combination

##### !end-answer

<!-- other optional sections -->
<!-- !hint - !end-hint (markdown, users can see after a failed attempt) -->
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
##### !explanation

In this case we need a list of meals, which makes sense as an array, but we want details of each meal, so the logical solution would be an array of hashes.  Each hash would have details of a particular meal.

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

As the last question above demonstrates, sometimes an array or a hash by itself does not solve a problem. Very often we will need to combine these two data structures to produce something a little more sophisticated.

## "Any Object" Includes Other Arrays and Hashes

Fortunately for us, Ruby was designed to be flexible in just this way. The elements in an array or the values in a hash can be _any object_, even another array or hash! So, to keep track of details of all the meals in our restaurant, we might devise something like this:

```ruby
menu = [
  {
    name: 'beet salad',
    price: 6.75,
    allergens: ['nuts']
  },
  {
    name: 'quiche',
    price: 10.00,
    allergens: ['gluten', 'dairy']
  },
  {
    name: 'molten chocolate cake',
    price: 8.50,
    allergens: []
  }
]
```

There's a lot of text and braces flying around here but the big idea is the same as before: we use _literals_ to define an object and then assign it to a variable. We've created an array called `menu` with three elements, each of which is a hash.

This technique where we type the data directly into our program is sometimes called _hard-coding_ the data. There are several other ways to get data, like reading it from a file or downloading it from the internet - this is something we'll talk about later. For now all of our data will be hard-coded.

## Accessing Data

We can use these nested structures just like any other variable in Ruby:

```ruby
# The first element in the "menu" array is a hash
puts menu[0]
# => {:name=>"beet salad", :price=>6.75, :allergens=>["nuts"]}

# Since "menu[0]" is a hash, we can apply more square brackets to it
puts menu[0][:name]
# => beet salad

# We can also assign it to a variable
salad = menu[0]
puts salad[:name]
# => beet salad

# "salad" and "menu[0]" are now just different names for the same
# object! Changes to one will be seen through the other.
# More on this idea later.
salad[:price] = 7.25
puts menu[0]
# => 7.25

# Array inside a hash inside an array - woah!
puts menu[0][:allergens][0]
# => nuts
```

The allergy information for each meal is an array inside a hash inside an array! This may seem a little complex, but this data structure fits our data well. Getting comfortable with this sort of nested structure is one of the big hurdles a novice programmer faces.

## Using Loops to Iterate Over Nested Structures

It's nice to be able to access one element at a time, but it requires us to know the **specific and literal** indices and/or keys of the structure, beyond just the structure itself. Can we write code that allows us to access values from nested arrays and hashes?

Yes! If all we know is the **structure** of the data, we can generically access values from the structure using **iteration.**

Read this code sample that combines iteration techniques and accessing from the `menu` variable defined above, and then let's dive into the explanation.

```ruby
# For each item in menu, print to the terminal the item's name and item's price with a hyphen in the middle
menu.each do |item|
  puts "#{item[:name]} - $#{item[:price]}"
end
```

### Iteration Review

We can iterate over **any array.** (We can also iterate over other data types, but let's delve into that later.)
This means that **with the right syntax,** we can execute any amount of code **for each element in the array.**

Being able to **execute code for each element in any given array** is an important skill that we will do _constantly_ in programming. This technique is called **iteration.**

If we know that `menu` is an **array**, then we can use iteration. In Ruby, this means _using an `each` loop_.

To iterate over the `menu` array, we do the following:

1. Determine what the array is (`menu`)
1. Call the `each` method on the array (`menu.each`)
1. Define the _iteration block_. This is a fancy phrase that means **start** a block of code with `do`, and end it with `end`. In practicality, programmers tend to forget the name "iteration block," so don't be alarmed if we also call it "the loop" or "the stuff inside the each loop."
1. Name the _block parameter_. This is the name of a **local variable.** This local variable **represents one element of the array at a time.** In this case, we are saying that each element of the `menu` array will be looked at _one loop at a time,_ and each element will be referenced by the local variable name `item`. In Ruby syntax, we define the name `item` inside of the `||`s, next to `do`. We can name this block parameter _any_ valid variable name.
    - In practice, the term "block parameter" is very fancy, and programmers tend to forget this name. We may also call this "iteratee" or "iteration variable."
1. Add the details of the _iteration block_. Between the `do |item|` and the `end`, we can write **any number of lines of code** to execute **for each element in the array.**
    - Again, to access the value of each element in the array, we reference it by the block parameter, or `item` in this case
    - Is `item` an array? Then you can use all of the good array syntax to access/read it!
    - Is `item` a hash? Then you can use all of the good hash syntax to access/read it!
    - If you're unsure of what data type `item` is, do some debugging work to find out

### Iteration and Nesting

Within our _iteration block_, we should write all of the lines of code that need to be executed for each element. If we need to print something per `item`, we should write `puts item` here. If we need to create variables, store data, modify data, and/or create data per element, we should do that here.

Similarly, if you need to access a deeper piece of data based on each `item`, then you should use `item` appropriately with the techniques we practiced today.

Even if `item` is one element within the array of `menu`, `item` may represent an array or hash itself.

#### Iteration Tips

- Proper/improper indentation in the code can make or break the readability of your code
- We do not `return` anything within iteration using `each` loops. In `each` loops, we are simply writing code to execute. We use `return` in order to return a value from a method.
- We can also use `each` to iterate over hashes. However, the syntax will need to change, as each item in a hash is not a single _element_, but instead a _key-value pair_. You may need to look up online what this syntax is in Ruby.
- We can put `each` loops anywhere in our code, as long as it's valid syntax (yes, we can put it in a method!)
    - ...We can even put `each` loops within each loops
- Sometimes, we may have a need to exit a loop pre-maturely (before the loop finishes). `each` loops are designed to go for every element, but if you need to have more control over that, you may want to look into the Ruby keywords `break` and `next`.
    - This is useful if you're specifically concerned with how long it takes a loop to run.
    - Also consider that an `each` loop is may not be your best solution. :)

### Exercise

You can either write code in the windows here, or write and test them in your own editor and paste the working code back into the window.

1. Add two more meals to our menu, including name, price and allergy information

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: custom-snippet
* language: ruby
* id: 78fe0556-0259-400e-aa46-e973c88dc062
* title: Adding two items to the menu
* docker_directory_path: /custom-snippets/01-02-menu1
* topics: arrays, hashes

##### !question

Add two more meals to our menu, including name, price and allergy information.

##### !end-question

##### !placeholder


```ruby
def menu_addition
  menu = [
    {
      name: 'beet salad',
      price: 6.75,
      allergens: ['nuts']
    },
    {
      name: 'quiche',
      price: 10.00,
      allergens: ['gluten', 'dairy']
    },
    {
      name: 'molten chocolate cake',
      price: 8.50,
      allergens: []
    }
  ]
  # Your code here to add to items to the menu


  # End of your code

  return menu
end
```

##### !end-placeholder

<!-- other optional sections -->
<!-- !hint - !end-hint (markdown, users can see after a failed attempt) -->
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
<!-- !explanation - !end-explanation (markdown, students can see after answering correctly) -->

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: custom-snippet
* language: ruby
* id: c8925080-3b03-41e9-85c7-daba3f50961b
* title: Write a loop to find the average price of a meal on our menu
* docker_directory_path: /custom-snippets/01-02-menu2
* topics: arrays, hashes

##### !question

Write a loop to find the average price of a meal on our menu

##### !end-question

##### !placeholder


```ruby
# Menu will look like this:
# menu = [
#         {
#           name: 'beet salad',
#           price: 6.75,
#           allergens: ['nuts']
#         },
#         ...
#       ]

def average_price(menu)
  sum = 0
  average = 0
  # Your code here to calculate the average price


  # End of your code

  return average
end
```

##### !end-placeholder

<!-- other optional sections -->
<!-- !hint - !end-hint (markdown, users can see after a failed attempt) -->
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
<!-- !explanation - !end-explanation (markdown, students can see after answering correctly) -->

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: custom-snippet
* language: ruby
* id: 78964ac8-8fa0-4078-b9e3-1bc9fda9f85b
* title: Write code to produce a list of all the allergens in the menu
* docker_directory_path: /custom-snippets/01-02-menu3
* topics: arrays, hashes

##### !question

Write code to produce a list of all the allergens in the menu

##### !end-question

##### !placeholder


```ruby
# Menu will look like this:
# menu = [
#         {
#           name: 'beet salad',
#           price: 6.75,
#           allergens: ['nuts']
#         },
#         ...
#       ]

def allergens(menu)
  allergen_list = []

  # Your code here to create a list of allergens


  # End of your code

  return allergen_list
end
```

##### !end-placeholder

<!-- other optional sections -->
<!-- !hint - !end-hint (markdown, users can see after a failed attempt) -->
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
<!-- !explanation - !end-explanation (markdown, students can see after answering correctly) -->

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

4. Write code that asks the user for the name of a meal and prints out the price
    - What should your code do if the meal isn't found?

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: custom-snippet
* language: ruby
* id: 4d266c2f-b392-4ec3-82b4-fce0ebf05549
* title: Write code that takes in the name of a meal and returnsthe price
* docker_directory_path: /custom-snippets/01-02-menu4
* topics: arrays, hashes

##### !question

Write code that takes the name of a menu item and returns the price

##### !end-question

##### !placeholder


```ruby
# Menu will look like this:
# menu = [
#         {
#           name: 'beet salad',
#           price: 6.75,
#           allergens: ['nuts']
#         },
#         ...
#       ]

def find_price(menu_item_name)
  item_price = 0
  menu = [
    {
      name: 'beet salad',
      price: 6.75,
      allergens: ['nuts']
    },
    {
      name: 'quiche',
      price: 10.00,
      allergens: ['gluten', 'dairy']
    },
    {
      name: 'molten chocolate cake',
      price: 8.50,
      allergens: []
    }
  ]

  # Your code here to find that menu item's price


  # End of your code

  return item_price
end
```

##### !end-placeholder

<!-- other optional sections -->
<!-- !hint - !end-hint (markdown, users can see after a failed attempt) -->
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
<!-- !explanation - !end-explanation (markdown, students can see after answering correctly) -->

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

## Summary

Hashes are great at storing collections of different data related to a single entity like demographic data about a person, or information about a product in inventory.  Arrays are likewise good at storing ordered collections of data, usually of the same type.  We often create nested structures with arrays and hashes allowing us to provide detailed data about a collection or list of items.  It's important to learn how to access and traverse a collection of nested data.