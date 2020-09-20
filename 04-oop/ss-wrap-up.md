# Solar System Wrap-up

In this in-class activity we will review our Solar System submissions and help cement our learning.  The goal is to get more grounding in Object-Oriented-Programming (OOP), learn from each-other, and self-reflect.

## Show Off to a Neighbor

In this part of the lesson we will pair up in breakout rooms.  In this 8-10 minutes you should

1. Show each other your CLIs.  Each should demonstrate how to add a planet to the Solar System.
1. Together define what are the responsibilities of the Planet and SolarSystem classes
1. Did either of you have any breakthroughs or learnings with OOP

## Self-Review

Now we will take a look at a sample [solution branch](https://github.com/ada-c14/solar-system/tree/c13-soln).  

Also take a look at the [rubric](https://github.com/ada-c14/solar-system/blob/c13-soln/feedback.md) for how you will be evaluated.  

In the class Slack please ask:

- Questions about the rubric
- Questions about the expectations of the project

Try to avoid specific questions about how you implemented something, that will come with project feedback.

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: paragraph
* id: 90fa783f-57f5-4c0b-b091-7dd594923498
* title: Role of the main program
<!-- * points: [1] (optional, the number of points for scoring as a checkpoint) -->
* topics: OOP, classes

##### !question

What was `main` in Solar System?

##### !end-question

##### !placeholder

What role do you think main played?

##### !end-placeholder

<!-- other optional sections -->
##### !hint

**Our Explanation:**

The `main` method in our Solar System project was a method whose responsibility is to create specific instances of data (`Planet`s and `SolarSystem`s) and manage the user interaction and display.

This should feel different compared to the responsibilities of `Planet` and `SolarSystem`, which represent some concept and define their states and behaviors.

##### !end-hint
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: paragraph
* id: b23038fa-7167-4436-923a-203f64799b8e
* title: Responsibilities of Planet and Solar System
* points: 1
* topics: classes, oop

##### !question

After talking with your pair, what did you feel the responsibilities of Planet and Solar System are?

##### !end-question

##### !placeholder

Just list what you feel are the roles of Planet and Solar System

##### !end-placeholder

<!-- other optional sections -->
##### !hint

We will discuss these in the group

##### !end-hint
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
<!-- !explanation - !end-explanation (markdown, students can see after answering correctly) -->

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: paragraph
* id: be2cd79b-24be-4cb0-869f-362be5fab062
* title: Reflection
<!-- * points: [1] (optional, the number of points for scoring as a checkpoint) -->
<!-- * topics: [python, pandas] (optional the topics for analyzing points) -->

##### !question

What Object-Oriented-Programming concepts do you feel better about now after finishing Solar System?

##### !end-question

##### !placeholder

Concepts you gained clarity on.

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

* type: paragraph
* id: bbd98515-9567-4ebc-b2ab-ae67cb47088d
* title: Areas for growth
<!-- * points: [1] (optional, the number of points for scoring as a checkpoint) -->
<!-- * topics: [python, pandas] (optional the topics for analyzing points) -->

##### !question

What are some concepts that you feel you need some further work on?

##### !end-question

##### !placeholder

Areas to work on with OOP.

##### !end-placeholder

<!-- other optional sections -->
<!-- !hint - !end-hint (markdown, users can see after a failed attempt) -->
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
<!-- !explanation - !end-explanation (markdown, students can see after answering correctly) -->

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

## Highlight Moving Away From CLI

In Solar System and previous projects, we wrote programs that used other pieces code:

- In Ride Share, we wrote code that iterated through our data, and when we ran the Ruby file, we saw output
- In Adagrams, we wrote methods that the driver/demo code invoked, and we could interact with it on the command line
- In Solar System, we wrote a *main* method that ran. This method created `Planet`s and `SolarSystem`s, and also determined the logic of how to interact with the program on the command line

Running the code like this allowed us to do the following:

- use the methods we made
- verify it is working
- see any output
- allow the user to enter input

Our projects are now going to move away from these CLI programs.

Instead of writing code in a *main* method or *main* program to run our Solar System code, to use the methods we made, we are going to do that in unit tests.

To verify that our code is working will now be shifted into unit tests.

Our projects will now rely less on seeing any output from `puts`, but increasingly rely on data that gets returned, which will get configured in our unit tests.

Our projects will have less requirements about accepting user input from the command line. If our projects have those requirements, they will be _separate_ from our library code.
