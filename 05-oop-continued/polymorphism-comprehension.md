# Polymorphism Journaling Exercise

## Polymorphism Assignment Instructions: 

1. Read through Thoughtbot’s article [“Back to Basics: Polymorphism and Ruby”](https://thoughtbot.com/blog/back-to-basics-polymorphism-and-ruby)
1. Answer the questions below for your own personal notes

## Questions

### !challenge

* type: paragraph
* id: 2916c265-d90f-439c-bb5c-82a4c834fa5a
* title: Question 1
* topics: polymorphism

##### !question

What is a definition for polymorphism in programming?

##### !end-question

##### !placeholder

Write your answer here

##### !end-placeholder

### !end-challenge

### !challenge

* type: paragraph
* id: 4c16c535-ffd6-45fe-97ce-ce67f244b68b
* title: Question 2
* topics: polymorphism

##### !question

Do some independent research. What is a definition for the template method pattern?

##### !end-question

##### !placeholder

Write your answer here

##### !end-placeholder

### !end-challenge


### !callout-info

## Instructions for questions 3-6
In Ruby, we can combine inheritance and the template method pattern. In the “Inheritance” section, the article describes a GenericParser class, with a method named parse. It also describes a JsonParser class, with a method named parse. Thirdly, it describes a XmlParser class, with a method named parse. Use this section of the text to complete questions 3-6.

### !end-callout


### !challenge

* type: paragraph
* id: f1832bc8-772b-45bc-b746-4453fc3cce01
* title: Question 3
* topics: polymorphism

##### !question

What is the difference between the implementation of the three parse methods? Which two parse methods are more similar? How is the third parse method different?

##### !end-question

##### !placeholder

Write your answer here

##### !end-placeholder

### !end-challenge


### !challenge

* type: paragraph
* id: 1209cfcb-3d6b-4695-b8fd-3935deafaec9
* title: Question 4
* topics: polymorphism

##### !question

What would happen if we ran this code? How is it different than running the parse method on an instance of JsonParser or XmlParser?

```ruby
parser = GenericParser.new
parser.parse
```

##### !end-question

##### !placeholder

Write your answer here

##### !end-placeholder

### !end-challenge

### !challenge

* type: paragraph
* id: 8649ae55-a5b3-4704-8c48-a2e96826d6ee
* title: Question 4
* topics: polymorphism

##### !question

What is the relationship between JsonParser and GenericParser? Which is the parent class (super class) and which is the child class (sub class)? Which parse method overrides the other parse method?

##### !end-question

##### !placeholder

Write your answer here

##### !end-placeholder

### !end-challenge

### !challenge

* type: paragraph
* id: 0205fd00-8376-451e-837f-085bf6a76532
* title: Question 5
* topics: polymorphism

##### !question


##### !end-question

##### !placeholder

Write your answer here

##### !end-placeholder

### !end-challenge

### !challenge

* type: paragraph
* id: bc10e637-7d9b-4f5d-b773-dfcfa4db6049
* title: Question 6
* topics: polymorphism

##### !question

GenericParser’s method named parse is a template method. What benefit and positive effect do we get when we use the template method pattern for GenericParser’s parse method?

##### !end-question

##### !placeholder

Write your answer here

##### !end-placeholder

### !end-challenge

### !challenge

* type: paragraph
* id: 28252b5a-0a45-4e22-a640-13d2598a2bfa
* title: Question 7
* topics: polymorphism

##### !question

What is a definition of duck typing in programming?

##### !end-question

##### !placeholder

Write your answer here

##### !end-placeholder

### !end-challenge

### !challenge

* type: paragraph
* id: 62ff459e-a5f1-4051-84d6-902668a4bd02
* title: Question 8
* topics: polymorphism

##### !question

True or false: In the Duck Typing section of the article, Ballard changes the implementation of GenericParser’s parse method to take in a parser argument. 

Is there code in this method that conditionally checks if parser is a JsonParser or XmlParser?

##### !end-question

##### !placeholder

Write your answer here

##### !end-placeholder

### !end-challenge

