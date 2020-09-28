# Polymorphism Reading

## Instructions

1. Read through [Thoughtbot’s article “Back to Basics: Polymorphism and Ruby”](https://thoughtbot.com/blog/back-to-basics-polymorphism-and-ruby)
1. Answer the comprehension questions below for your own personal notes
1. We will review the comprehension questions in class

## Comprehension Questions

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: short-answer
* id: 60ff7090-d205-4f23-91b9-cbfb98daf079
* title: Polymorphism definition
* points: 1
* topics: oop

##### !question

What is a definition for polymorphism in programming?


##### !end-question

##### !placeholder

Polymorphism definition

##### !end-placeholder

##### !answer

/.+/

##### !end-answer

<!-- other optional sections -->
<!-- !hint - !end-hint (markdown, users can see after a failed attempt) -->
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
##### !explanation

Polymorphism - the provision of a single interface to entities of different types.  Basically several different types of objects all presenting the same method signature, but performing the action in their own ways.

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: short-answer
* id: 7a312106-774c-4b63-ba0a-7cf5e9ed8f1c
* title: Definition: Template Method Pattern
* points: 1
* topics: oop

##### !question

Do some independent research. What is a definition for the template method pattern?

##### !end-question

##### !placeholder

Definition: template method pattern

##### !end-placeholder

##### !answer

/.+/

##### !end-answer

<!-- other optional sections -->
<!-- !hint - !end-hint (markdown, users can see after a failed attempt) -->
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
##### !explanation

The template method is a method in a superclass, usually an abstract superclass, and defines the skeleton of an operation in terms of a number of high-level steps.

Basically the superclass defines a method signature that subclasses must implement and anyone who uses a subclass knows to expect.

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

## XML Parser Class Questions

In Ruby, we can combine inheritance and the template method pattern. In the "Inheritance" section, the article describes a `GenericParser` class, with a method named parse. It also describes a `JsonParser` class, with a method named `parse`. Thirdly, it describes a `XmlParser` class, with a method named `parse`. Use this section to complete questions 3-6.

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: short-answer
* id: 392a68f6-6634-4179-95a9-3bfdffa9e844
* title: Parse Methods
* points: 1
* topics: oop

##### !question

What is the difference between the implementation of the three parse methods? Which two parse methods are more similar? How is the third parse method different?

##### !end-question

##### !placeholder

Difference between the parse methods?

##### !end-placeholder

##### !answer

/.+/

##### !end-answer

<!-- other optional sections -->
<!-- !hint - !end-hint (markdown, users can see after a failed attempt) -->
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
##### !explanation

The `GenericParser`'s version of the `parse` method is "abstract" it only raises an exception.  The other two classes implement versions of the `parse` method (they puts a message)

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->


<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: short-answer
* id: bb1ad99c-e318-408a-bd7a-312600f78918
* title: GenericParser
* points: 1
* topics: oop

##### !question

What would happen if we ran this code? How is it different than running the parse method on an instance of JsonParser or XmlParser?

```ruby
parser = GenericParser.new
parser.parse
```

##### !end-question

##### !placeholder

What is the outcome of running the code?

##### !end-placeholder

##### !answer

/.+/

##### !end-answer

<!-- other optional sections -->
<!-- !hint - !end-hint (markdown, users can see after a failed attempt) -->
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
##### !explanation

It would raise a `NotImplementedError` error.  This is because the `GenericParser` class below has an abstract `parse` method.

```ruby
class GenericParser
  def parse
    raise NotImplementedError, 'You must implement the parse method'
  end
end
```

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: short-answer
* id: 214bb31f-94ba-48d0-a99a-57a33e1bd5ba
* title: JsonParser and GenericParser
* points: 1
* topics: oop

##### !question

What is the relationship between JsonParser and GenericParser? Which is the parent class (super class) and which is the child class (sub class)? Which parse method overrides the other parse method?

##### !end-question

##### !placeholder

Describe the relationship between JsonParser and GenericParser

##### !end-placeholder

##### !answer

/.+/

##### !end-answer

<!-- other optional sections -->
<!-- !hint - !end-hint (markdown, users can see after a failed attempt) -->
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
##### !explanation

`JsonParser` inherits from `GenericParser`, which makes `GenericParser` the superclass and `JsonParser` the subclass.  The subclass' `parse` method overrides the version defined in `GenericParser`.

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: short-answer
* id: 71afeec8-bb5b-4a93-9500-1f24dd088083
* title: Benefit of Template method pattern
* points: 1
* topics: oop

##### !question

GenericParser’s method named parse is a template method. What benefit and positive effect do we get when we use the template method pattern for GenericParser’s parse method?

##### !end-question

##### !placeholder

Benefit of template method pattern

##### !end-placeholder

##### !answer

/.+/

##### !end-answer

<!-- other optional sections -->
<!-- !hint - !end-hint (markdown, users can see after a failed attempt) -->
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
##### !explanation

It forces each subclass of `GenericParser` to implement the same method signature for `parse`.

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

#### Questions on Duck Typing

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: short-answer
* id: 7601f310-530d-4d2c-9d74-9324d8402f63
* title: Duck Typing
* points: 1
* topics: oop

##### !question

What is a definition of duck typing in programming?

##### !end-question

##### !placeholder

Duck typing definition

##### !end-placeholder

##### !answer

/.+/

##### !end-answer

<!-- other optional sections -->
<!-- !hint - !end-hint (markdown, users can see after a failed attempt) -->
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
##### !explanation

From Wikipedia:  

Duck typing in computer programming is an application of the duck test— "If it walks like a duck and it quacks like a duck, then it must be a duck"— to determine if an object can be used for a particular purpose. With normal typing, suitability is determined by an object's type. In duck typing, an object's suitability is determined by the presence of certain methods and properties, rather than the type of the object itself.

Basically with dynamicly typed languages like Ruby, you can substitute any object which implements the same method signature required.  In the example as long as the object implements the `parse` method, it can be used by a client app which requires an object with a `parse` method.

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->


<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: multiple-choice
* id: 0ea84974-ad63-4d27-a25f-3e5dd81d679b
* title: Type Checking
* points: 1
* topics: OOP

##### !question

In the Duck Typing section of the article, Ballard changes the implementation of GenericParser’s parse method to take in a parser argument. Is there code in this method that conditionally checks if parser is a JsonParser or XmlParser?


##### !end-question

##### !options

* True
* False
  
##### !end-options

##### !answer

* False

##### !end-answer

<!-- other optional sections -->
<!-- !hint - !end-hint (markdown, users can see after a failed attempt) -->
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
##### !explanation

False, although he does show how a `Parser` class that does do type checking can be simplified to just use the duck-typed `parse` methods of the `XmlParser` and `JsonParser` classes at the very end.

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->