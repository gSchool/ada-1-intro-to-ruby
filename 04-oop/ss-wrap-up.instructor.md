# Solar System Wrap-Up

## Purpose

The purpose of this discussion is to name for the students that we are moving away from cli and toward a reliance on unit tests because it ends up feeling like a pretty significant paradigm shift for a lot of the students to write methods without writing code right next to it that calls those methods.  This should reinforce the trend introduced with Adagrams.

## Part 1: Review

### Show Off to a Neighbor

No more than 8 minutes: Pair students up in a breakout room

In the breakout rooms students should:

1. show each other their CLIs. Ask them to add a planet to each other's solar systems.
1. share with each other what the responsibilities of the Planet and SolarSystem classes were, and any breakthroughs or learnings they had with OOP

### Self-Review

Tell students that for feedback for this project, we will give them a solution branch. The solution branch has comments in it that highlight the Code Review and Functional Requirements criteria in it, so students can check their own project against our rubric. Demonstrate to students how to navigate through the code files on GitHub.

Give them around 15 minutes to review their own code so that they know how their code compares against a solution.

Encourage students to ask questions about the rubric over Slack or on 1:1, it's not the focus of this time to grade or for immediate feedback. Remind students that there are infinite solutions and that our solution branch is just one.

C13 solution branch: https://github.com/AdaGold/solar-system/tree/c13-soln

Give students 15 minutes or so to review the solution and do some reflection.  They can use the provided free-response questions in the [wrap up document](./ss-wrap-up.md).


## Part 2: SS Class Discussion

Spend another 15 minutes or so discussing Solar System answering questions and reinforcing key concepts such as classes, constructors, instance methods and separating different components into different files.

May be helpful to prompt the class with the question "How was Solar System unique?" and give them time to discuss that before bringing the class together to write answers out on the white board.

## What was `main` in Solar System?

The `main` method in our Solar System project was a method whose responsibility is to create specific instances of data (`Planet`s and `SolarSystem`s) and manage the user interaction and display.

This should feel different compared to the responsibilities of `Planet` and `SolarSystem`, which represent some concept and define their states and behaviors.

## Highlight Moving Away From CLI

The final part of the lesson just highlights how we are breaking programs accross multiple files and that we will be moving away from `gets.chomp` and `puts` statements and toward using unit tests to verify correctness.