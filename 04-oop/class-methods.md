# Class Methods

<iframe src="https://adaacademy.hosted.panopto.com/Panopto/Pages/Embed.aspx?pid=7e14a13c-d7fe-4f2f-8626-ac3a017c836f&autoplay=false&offerviewer=true&showtitle=true&showbrand=false&start=0&interactivity=all" height="405" width="720" style="border: 1px solid #464646;" allowfullscreen allow="autoplay"></iframe>

## Learning Goals

By the end of this lesson we should be able to...

- Explain new functionality within classes including:
  - _Class Methods_
  - Class variables
- Examine why we'd use one type of method over another
- Practice using prior learning including
  - Create constructor (`initialize`)
  - Create and use attributes (stored in instance variables)
  - Create instance Methods
  - `self`


## Introduction

The examples we will use in class today will assume we are writing software for a music player that plays audio tracks based off files on your computer, and keeps track of how many times each audio track has been played.

## Ruby Classes Thus Far

### Constructors (`initialize`), Instance Variables, and Instance Methods

The `initialize` method within a class is special. When the `new` method is called on a _class_ a new _instance_ is created and the `initialize` method is promptly invoked. This method is used to create the default state of an _object instance_.

Within the `initialize` method, we do any setup that should happen at the beginning of creating any instance of a class:

  1. make any necessary data manipulations
  1. set any given attributes in _instance variables_.

By default, instance variables are only visible inside their object. Within the class definition, we refer to and access the values of instance variables using the `@variable_name` syntax.

Outside of the class definition, code that wants to read or write those instance variables must use one of the _helper methods_ `attr_reader`, `attr_writer` or `attr_accessor` (which are shortcuts for _getter_ and _setter_ methods).

Here is a class that might represent a song in a music player program:

```ruby
class Song
  attr_reader :title, :artist, :filename, :play_count

  def initialize(title, artist, filename)
    @title = title
    @artist = artist
    @filename = filename
    @play_count = 0
  end
end
```

```ruby
song = Song.new("Respect", "Aretha Franklin", "songs/respect.mp3")
song.title
# => "Respect"
```

### Instance Methods

Instance methods are defined with `def a_snake_case_name`. Instance methods are invoked on _instances_ of a class. **These are exactly the type of Ruby method we've seen thus far**.

Here is an expanded version of our `Song` class, now with a couple of instance methods.

```ruby
class Song
  attr_reader :title, :artist, :filename, :play_count

  def initialize(title, artist, filename)
    @title = title
    @artist = artist
    @filename = filename
    @play_count = 0
  end

  def summary
    return "#{@title}, by #{@artist}"
  end

  def play
    @play_count += 1
    # ... more code that loads the song data from the file and sends it to the speakers ...
  end
end
```

```ruby
song = Song.new("Respect", "Aretha Franklin", "songs/respect.mp3")
puts song.summary
# => Respect, by Aretha Franklin
song.play
# 🎶 R-E-S-P-E-C-T 🎶
song.play_count
# => 1
```

#### Assess

With this code above, identify which parts of the following code are:

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: multiple-choice
* id: dd218629-b856-4633-8720-891c7a8d75cc
* title: Instance Variables
* points: 1
* topics: OOP, Classes

##### !question

Which of the following are instance variables?

##### !end-question

##### !options

* `def play`
* `@title`
* `title`
* `attr_reader :title`
* `song = Song.new("Respect", "Aretha Franklin", "songs/respect.mp3")`
* `song.play`


##### !end-options

##### !answer

* `@title`

##### !end-answer

<!-- other optional sections -->
<!-- !hint - !end-hint (markdown, users can see after a failed attempt) -->
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
##### !explanation

Instance variables always start with the `@` symbol.  They have scope throughout the instance methods and each instance of the class gets it's own copy of the instance variables.

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: multiple-choice
* id: eba64284-e166-4fa2-9a5e-1f015e4061a1
* title: Instance Methods
* points: 1
* topics: OOP, Classes

##### !question

Which of the following is the definition of an instance method?

##### !end-question

##### !options

* `def play`
* `@title`
* `title`
* `attr_reader :title`
* `song = Song.new("Respect", "Aretha Franklin", "songs/respect.mp3")`
* `song.play`


##### !end-options

##### !answer

* `def play`

##### !end-answer

<!-- other optional sections -->
<!-- !hint - !end-hint (markdown, users can see after a failed attempt) -->
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
##### !explanation

Any normal-looking method defined inside a class becomes an instance method.  Instance methods get access to all the instance variables.

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: multiple-choice
* id: 2b8c51fc-af79-43c1-9dee-3af8e159880a
* title: Creating an instance
* points: 1
* topics: OOP, Classes

##### !question

How do you create a new instance of a class?

##### !end-question

##### !options

* `def play`
* `@title`
* `title`
* `attr_reader :title`
* `song = Song.new("Respect", "Aretha Franklin", "songs/respect.mp3")`
* `song.play`

##### !end-options

##### !answer

* `song = Song.new("Respect", "Aretha Franklin", "songs/respect.mp3")`

##### !end-answer

<!-- other optional sections -->
<!-- !hint - !end-hint (markdown, users can see after a failed attempt) -->
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
##### !explanation

We create a new instance of a class with the `.new` method.  

The syntax to create a new instance with `variable = Class_name.new(args)`

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: multiple-choice
* id: fafb7590-998f-49ea-b4e0-4e7225f53ff3
* title: Calling an instance method
* points: 1
* topics: OOP, Classes

##### !question

Which of the below calls an intance method?

##### !end-question

##### !options

* `def play`
* `@title`
* `title`
* `attr_reader :title`
* `song = Song.new("Respect", "Aretha Franklin", "songs/respect.mp3")`
* `song.play`

##### !end-options

##### !answer

* `song.play`

##### !end-answer

<!-- other optional sections -->
<!-- !hint - !end-hint (markdown, users can see after a failed attempt) -->
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
##### !explanation

Once you have created an instance with `.new` like for example `song = Song.new(...)`

You can then call a method on the instance (the instance method) with `song.play`.

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->



### Review Summary

When we review each of these pieces of code that we've written there is one major thing in common: we are always creating an **instance** of our class prior to _calling_ any of its instance methods.

This is because all of the methods we use are always relying on specific data that is related to each individual instance of the object we are using. For the `Song`'s `summary` method, we were showing the data about a **specific** `Song`. If we had 500 different instances of `Song`, it would probably be true that each instance of `Song` had a different result for the `summary` method, even though they are all `Song` instances with the same implementation. The instance method `summary` used an instance variable within it.

There are times in which we'll make methods that are related to the concept of `Song`, but are not related to a specific instance of a `Song`.

  - What if we have things that related to **all** `Song`s?
  - What if we want `Song`-specific code used to set up a bunch of `Song`s, and not just one `Song`?

## Class Methods and `self`

Instance methods are methods that are called on an instance of a class. **_Class methods_ are methods that _are called on a class_**.

### Why?

Class methods provide functionality to a class itself. We may soon need to implement features that belong to the class, but don't belong to a single instance of the class. Let's look at the syntax

### Syntax to Use Class Methods

Class methods are called directly on the _class_ and not on an _instance_ of the class. Assuming that there is a class named `ClassName` and a class method named `class_method`...

```ruby
puts ClassName.class_method
# 'This is a CLASS METHOD'
```

Compare this to our syntax of calling an instance method.

```ruby
instance = ClassName.new
puts instance.instance_method
# 'This is an INSTANCE METHOD'
```

We've already seen many different class methods!

`new` is probably the class method we're most familiar with. If you haven't noticed before, take the time to notice that we always call `.new` off of the name of the class we're instantiating. That's because `new` is a class method! `new` is a built-in Ruby method defined on all objects, which builds an instance of that class, calls its `initialize` method, and returns that instance. It is a class method because it doesn't make sense to operate off of an instance of a class... initializing an instance of a class is the functionality of a class as a whole!

Another class method we might have seen before is `Random.rand` to generate a random number. `Random` is a class that doesn't particularly necessitate an _instance_ of a Thing that is Random, but it _is_ a class that has a feature available to the concept of Random.

### Syntax to Define Class Methods

Let's see how to define a class method within a class definition:

```ruby
class ClassName
  def self.class_method
    return "This is a CLASS METHOD"
  end

  def instance_method
    return "This is an INSTANCE METHOD"
  end
end
```

**Class methods** are _defined_ like **instance methods**, but they start with `self.`

**Review:** What's the syntax to call the class method? What's the syntax to call the instance method?

#### Usage of Class Methods Within the Class

Class methods are called internally with the `self.class` identifier or the name of the class identifier.

```ruby
class ClassName
  def self.class_method
    return "This is a CLASS METHOD"
  end

  def instance_method
    return "This is an INSTANCE METHOD... and I'm calling the class method with syntax 1: #{self.class_method}, and syntax 2: #{ClassName.class_method}"
  end
end
```

## Adding Class Methods to `Song`

Now that we see the syntax for how we'd use a **class method** versus an **instance method**, let's see why we'd want to use one over the other.

Let's think back to the `Song` class we created earlier. We'll start with tracking the total number of plays across all songs. For this, we'll use a strategy to allow the `Song` class to manage this tracking. We'll create a _class variable_, `@@total_plays`, as well as a method to read its value, `Song.total_plays`.

```ruby
class Song
  attr_reader :title, :artist, :filename, :play_count

  def initialize(title, artist, filename)
    @title = title
    @artist = artist
    @filename = filename
    @play_count = 0
  end

  def summary
    return "#{@title}, by #{@artist}"
  end

  def play
    @play_count += 1
    # ... load the song data from the file and send it to the speakers ...
  end

  # Define a class method 
  def self.definition
    return "A song is a short poem or other set of words set to music or meant to be sung."
  end

end
```

```ruby
puts Song.definition
```
## Class Variables

While we are discussing class methods, now seems like a good time to also introduce class variables. Class methods and class variables are about as related to each other as instance methods and instance variables are related to each other... There is no strict relationship, but their concepts in how they relate to object-oriented programming are similar.

- Class variables begin with `@@`
- Class variables are typically defined with an initial value at the top of the class
- Class variables are available to the entire class (in any method)
- Class variables will raise an error if they are read before they're created
- Class variables can cause problems later, so **avoid using them**
- Class variables are sometimes used for application configuration

## Adding Class Variables to `Song`

```ruby
class Song
  attr_reader :title, :artist, :filename, :play_count

  # Initialize our total play count
  # This will be set to 0 when the program is loaded
  @@total_plays = 0

  def initialize(title, artist, filename)
    @title = title
    @artist = artist
    @filename = filename
    @play_count = 0
  end

  def summary
    return "#{@title}, by #{@artist}"
  end

  def play
    @play_count += 1
    @@total_plays += 1
    # ... load the song data from the file and send it to the speakers ...
  end

  # Define a class method to access the class variable
  def self.total_plays
    return @@total_plays
  end
end
```

```ruby
# No instances required!
puts "total: #{Song.total_plays} plays"

respect = Song.new("Respect", "Aretha Franklin", "songs/respect.mp3")
moonlight = Song.new("What a Little Moonlight Can Do", "Billie Holiday", "songs/moonlight.mp3")

3.times do
  respect.play
end

5.times do
  moonlight.play
end

# No instances required!
puts "total: #{Song.total_plays} plays"

# Respect: 3 plays
# What a Little Moonlight Can Do: 5 plays
# total: 8 plays
```

All that `total_plays` does is return the value of `@@total_plays`. If `@@total_plays` were an instance method, we would use the `attr_reader` helper method to accomplish the same thing. Unfortunately there's no equivalent to `attr_reader` for class variables, so we have to do the work ourselves.

#### Questions

- Consider the class variable `@@total_plays`
  - Where is `@@total_plays` initialized?
  - How would our program change if we did not initialize this variable?
  - How would our program change if we initialized this variable in the `initialize` method?
- Why is `total_plays` a class method? How would our program change if it was an instance method?

#### Assess

1. What's the syntax to define a class method? Where are class methods defined?
1. What's the syntax to invoke a class method?
1. What's the syntax to define a class variable? Where are class variables defined?

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: multiple-choice
* id: fcd945f9-a299-4f07-be43-3a6fd1361934
* title: Defining a Class Method
* points: 1
* topics: OOP, Classes

##### !question

What's the syntax to define a _class_ method?

##### !end-question

##### !options

* `def method_name`
* `def self.method_name`
* `@plays`
* `@@plays`
* `ClassName.method_name`
* `instance_name.method_name`

##### !end-options

##### !answer

* `def self.method_name`
  
##### !end-answer

<!-- other optional sections -->
<!-- !hint - !end-hint (markdown, users can see after a failed attempt) -->
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
##### !explanation

You define a class method with the syntax `def self.method_name`

For example:

```ruby
class Song
  def self.total_plays
    return @@total_plays
  end
end
```

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: multiple-choice
* id: 723d6034-78ab-468a-90a9-035dc10454e3
* title: Invoking a class method
* points: 1
* topics: OOP, Classes

##### !question

What's the syntax to invoke (i.e. call) a class method?

##### !end-question

##### !options

* `def method_name`
* `def self.method_name`
* `@plays`
* `@@plays`
* `ClassName.method_name`
* `instance_name.method_name`

##### !end-options

##### !answer

* `ClassName.method_name`

##### !end-answer

<!-- other optional sections -->
<!-- !hint - !end-hint (markdown, users can see after a failed attempt) -->
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
##### !explanation

You call a class method with the class name followed by a period and then the method name.  

For example:

```ruby
class Song
  def self.total_plays
    return @@total_plays
  end
end

# Invoke total_plays
Song.total_plays
```

In the example above `Song` is the class and the class method is called `total_plays`

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: multiple-choice
* id: 10500f80-979a-435d-8069-318fd78c0e84
* title: Class Variables
* points: 1
* topics: OOP, Classes

##### !question

Which of the following is a class variable?

##### !end-question

##### !options

* `def method_name`
* `def self.method_name`
* `@plays`
* `@@plays`
* `ClassName.method_name`
* `instance_name.method_name`

##### !end-options

##### !answer

* `@@plays`

##### !end-answer

<!-- other optional sections -->
##### !hint

Class variables are defined with two `@` symbols so `@@plays` is a class variable.  Class variables are attached to the class, where the class and all instances share one instance of the variable.  

##### !end-hint
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
<!-- !explanation - !end-explanation (markdown, students can see after answering correctly) -->

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

## Activity: `Song.most_played`

In the previous example, we used a class method to access a class variable. Another common use of a class method is to work with a collection of instances of that class.

For example, what if we wanted a method that, given an array of `Song`s, picks the one with the most plays? Since the argument is a collection of `Song`s, it doesn't make sense to require the method to be called on one particular instance. In this case, a class method is a good choice.

Try to implement `Song.most_played`. As you write the method, think about how you would test it - what interesting scenarios can you imagine?

Once you've come up with an version you're happy with, [you can see ours here](./example-class-method.resource.md).



## Avoiding class variables using composition.

Review the jukebox class below.

* How does it keep track of total plays?
* How does it determine the most played song?

Create jukebox.rb and main.rb files. Copy and paste the code. 

* What do you expect runing main.rb to produce?
* Run `ruby main.rb` in the terminal. 

```ruby
#jukebox.rb
class Jukebox
  attr_reader :songs, :total_plays

  def initialize
    @total_plays = 0
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def play(song)
    song.play
    @total_plays += 1
  end

  def calculate_most_played
    most_played = @songs.max_by do |song|
      song.play_count
    end
    return most_played
  end
  
end
```

```ruby
#main.rb
require_relative 'jukebox'
require_relative 'song'

def make_jukebox
  ada_jukebox = Jukebox.new

  ada_jukebox.add_song(Song.new("Respect", "Aretha Franklin", "songs/respect.mp3"))
  ada_jukebox.add_song(Song.new("What a Little Moonlight Can Do", "Billie Holiday", "songs/moonlight.mp3"))
  ada_jukebox.add_song(Song.new("Adore", "Savages", "songs/adore.mp3"))

  return ada_jukebox
end

def main
  ada_jukebox = make_jukebox

  s1 = ada_jukebox.songs[0]
  s2 = ada_jukebox.songs[1]
  s3 = ada_jukebox.songs[2]

  3.times do
    ada_jukebox.play(s1)
  end

  5.times do
    ada_jukebox.play(s2)
  end

  2.times do
    ada_jukebox.play(s3)
  end

  puts ada_jukebox.total_plays
  puts ada_jukebox.calculate_most_played.title
end

main
```

We could go deeper into class variables. However, in general, we will discourage the use of class variables because of their usually unintended side-effects and encourage other types of design.

## Writing About Methods in Documentation

When Rubyists write English text about a class's instance methods in documentation, we typically write their names in the following format:

```
ClassName#method_name
```

The octothorp indicates that the method is an instance method. In the case of our `Song` class, we have `Song#play` and `Song#summary`.

When writing about a class method, we use a dot instead of a pound sign: `ClassName.class_method`. Note that this matches the way the method is called.

## One Application of Class Methods: Factory Method Pattern

There is a design pattern in software named [the Factory Method Pattern](https://en.wikipedia.org/wiki/Factory_method_pattern), which outlines a common programming pattern.

In Ruby, the common way to implement this pattern is using class methods.

## Conclusion

Class methods provide functionality to a class itself.

We should be able to contrast class methods against instance methods, and class variables against instance variables.

We should be able to combine our regular Ruby logic to this new concept of object-oriented programming to do complex functionality, such as what our `Song.most_played` activity accomplished.

## Additional Resources
- [Some Additional Examples](https://www.jimmycuadra.com/posts/self-in-ruby/)
- [Few More Examples](https://hackhands.com/three-golden-rules-understand-self-ruby/)
- [Even more uses of `self` than you'll need right now](http://blog.honeybadger.io/ruby-self-cheat-sheet/)
