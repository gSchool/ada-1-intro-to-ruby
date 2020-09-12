## The `self` Keyword

Inside an instance method, it's sometimes useful to refer to the current object, the instance upon which this method was invoked. Ruby's `self` keyword does exactly this.

```ruby
class User
  def puts_self
    puts self
  end
end
```

```ruby
ada = User.new('Ada Lovelace', 'ada@adadev.org')
ada.puts_self     # => #<User:0x007fb7da550ca0>
```

`self` acts much like any other variable. You can print it, call methods on it, and even pass it to other methods. The only thing you can't do is reassign it.

Some other languages (notably JavaScript) use `this` instead of `self`, but the meaning is the same.

The `self` keyword will come up quite a lot as we continue to learn about Ruby and build more complicated programs, but for now it's enough to know that it exists.

**Question:** 

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: short-answer
* id: 8c3aa000-c2bb-44e3-a946-1e360746cbe5
* title: When would `self` be helpful?
* points: 1
* topics: oop, self

##### !question

In what situations might `self` be useful?

##### !end-question

##### !placeholder

Uses for self

##### !end-placeholder

##### !answer

/.+/

##### !end-answer

<!-- other optional sections -->
<!-- !hint - !end-hint (markdown, users can see after a failed attempt) -->
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
##### !explanation

`self` can be useful if you have a local variable named the same as a helper method in a class.

For example

```ruby
class User
  attr_accessor :name

  def initialize(name)
    self.name = name
  end
end
```

The above example has a parameter (`name`) and a attr_accessor with the same name.  `self` can help distinguish between the method `self.name` and the local variable `name`.

##### !end-explanation

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
Helper Method     | A method used to perform a particular repetitive task common across multiple classes or methods. | `String.upcase` 
Generator or Macro | A small piece of code that generates a big piece of code. In Ruby, they're used to automatically add functionality to a class, like reader or writer methods. | `attr_accessor :email`
`self`            | Ruby keyword referring to the current object | `self`

## Summary

`self` is a Ruby keyword used to refer to the current object or instance for which the method was called.  It can be used when clarity us needed distinguishing between instance methods and local variables.  You will see the `self` keyword used in other places as well in Ruby as we learn more about the language.  

