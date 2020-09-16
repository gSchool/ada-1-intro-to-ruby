# Helper Methods

<iframe src="https://adaacademy.hosted.panopto.com/Panopto/Pages/Embed.aspx?id=0fc8ccf5-1125-4e85-8d7b-ac380000efd0&autoplay=false&offerviewer=true&showtitle=true&showbrand=false&start=0&interactivity=all" height="405" width="720" style="border: 1px solid #464646;" allowfullscreen allow="autoplay"></iframe>

## Learning Goals

By the end of this lesson, we should be able to...
- DRY up repeated code using _helper methods_
  
## Use Helper Methods to Avoid Repetition

The [code from the previous lesson](classes-in-ruby.md) allows us to read/get and write/set the name and email properties in the `User` class. This is done so frequently that Ruby added some syntactic sugar to help us out. Enter two _helper methods_, `attr_reader` and `attr_writer`:

```ruby
class User
  # Generate reader methods for name and email
  attr_reader :name, :email

  # Only generate a writer method for email
  attr_writer :email

  def initialize(name, email)
    @name = name
    @email = email
  end

  def summary
    return "#{@name}: #{@email}"
  end
end
```

A _helper method_ is a small piece of code that assists with a larger piece of functionality. Sometimes they figure out sub-problems in a less crowded space, sometimes they contain work that is repeated across multiple other methods. `attr_reader` and `attr_writer` are both a special kind of helper method sometimes called a _generator_. They are small pieces of code that generates a big piece of code. These two lines tell Ruby to automatically add reader and writer methods for those variables to your class. 

Adding `attr_reader :name` to our class is _exactly_ the same as creating the `def name` method in the previous example. Similarly, `attr_writer :name` replaces the `def name=(new_name)` method. The instance variables to be exposed are specified using a comma-seperated list of symbols. To demonstrate the syntax, in the above example we have created both reader and writer methods for `@email`, but only a reader method for `@name`.

`attr_reader` and company are called helper **methods** for a reason. Under the hood they're actually built-in Ruby methods that are run when the class is defined. `attr_reader` or `attr_writer` is the name of the method, and the instance variables to expose (like `:name`) are the arguments. Weird!

If you don't need to be able to control the read/get and write/set functionality independently, `attr_accessor` provides the functionality of `attr_reader` and `attr_writer`!

```ruby
class User
  # email had both an attr_reader and an attr_writer, so we replace it with attr_accessor
  attr_accessor :email

  # name had only an attr_reader, so we leave it as-is
  attr_reader :name

  def initialize(name, email)
    @name = name
    @email = email
  end

  def summary
    return "#{@name}: #{@email}"
  end
end
```

Helper methods like `attr_accessor` are very useful, because they allow us to add common functionality without typing out a bunch of boilerplate code. This makes our programs more readable and reduces the possibility of making a mistake. For these reasons, **we recommend that you always use the `attr_reader` / `attr_writer` / `attr_accessor` helper methods**, and never write getter and setter methods manually.

We'll see many more helper methods as we start talking about Rails in a few weeks.

### Exercise

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: custom-snippet
* language: ruby
* id: d2a4f03e-0d83-4036-8bc8-9965f75b870c
* title: Simplify the Product Class
* docker_directory_path: /custom-snippets/product-class-with-helpers
* points: 1
* topics: classes, OOP, helper methods

##### !question

Use helper methods to DRY up the `Product` class from the [previous lesson](classes-in-ruby.md).

##### !end-question

##### !placeholder

```ruby
class Product
  def initialize(name, quantity_in_stock)
    @name = name
    @quantity_in_stock = quantity_in_stock
    @quantity_sold = 0
  end

  def name
    return @name
  end

  def name=(value)
    @name = value
  end

  def quantity_in_stock
    return @quantity_in_stock
  end

  def quantity_in_stock=(value)
    @quantity_in_stock = value
  end

  def quantity_sold
    return @quantity_sold
  end

  def available?
    return quantity_in_stock > 0
  end

  def sell(amount)
    @quantity_in_stock -= amount
    @quantity_sold += amount
  end
end
```

##### !end-placeholder

<!-- other optional sections -->
##### !hint

Potential solution:

```
class Product
  attr_accessor :name, :quantity_in_stock
  attr_reader :quantity_sold

  def initialize(name, quantity_in_stock)
    @name = name
    @quantity_in_stock = quantity_in_stock
    @quantity_sold = 0
  end

  def available?
    return quantity_in_stock > 0
  end

  def sell(amount)
    @quantity_in_stock -= amount
    @quantity_sold += amount
  end
end
```

##### !end-hint
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
<!-- !explanation - !end-explanation (markdown, students can see after answering correctly) -->

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

## Vocabulary

Here is the table from the previous lesson, updated to include new terms.

Term              | Definition | Example
---               | ---        | ---
Object            | A programming concept that ties together _state_ (variables) and _behavior_ (methods). |
Class             | Definition of what an object looks like, using Ruby's `class` keyword. The first letter is always capitalized. | `class User`
Instance          | One particular object. Built using a class's `new` method. | `ada = User.new`
Instance Variable | A variable attached to a particular instance of a class. Also known as an _attribute_. Always begins with an `@`. Not visible outside that class. | `@name`
Instance Method   | A method attached to a particular instance of a class. Often relies on or modifies instance variables. Can be invoked from outside that class using `.` notation. | `def summary()`
Constructor       | A special instance method that is called automatically when a new instance of a class is created. Takes care of any initial setup. Any arguments passed to `new` will be passed to the constructor. | `def initialize(name, email)`
Reader Method     | Instance method that returns the value of an instance variable. Also known as a _getter_ or _accessor_. | `def email`<br>&nbsp;&nbsp;&nbsp;&nbsp;`return @email`<br>`end`
Writer Method     | Instance method that sets the value of an instance variable. Also known as a _setter_ or _mutator_. | `def email=(new_email)`<br>&nbsp;&nbsp;&nbsp;&nbsp;`@email=new_email`<br>`end`
**Helper Method**     | A method used to perform a particular repetitive task common across multiple classes or methods. | `String.upcase` 
**Generator** | A small piece of code that generates a big piece of code. In Ruby, they're used to automatically add functionality to a class, like reader or writer methods. | `attr_accessor :email`

## Summary

Helper methods provide a quick and succinct way to create reader and writer methods.  By using `attr_reader` you can create a reader method and using `attr_writer` you can create a writer method.  Similarly if you need _both_ a reader and writer method you can use `attr_accessor`.

## Additional Resources

- [Creating your own attr_accessor in Ruby](https://mikeyhogarth.wordpress.com/2011/12/01/creating-your-own-attr_accessor-in-ruby/)
