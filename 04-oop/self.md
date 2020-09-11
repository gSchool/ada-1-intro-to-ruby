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

