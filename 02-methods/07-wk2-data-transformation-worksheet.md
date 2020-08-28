# Data Transformation Worksheet

# Part 1

## Iterating through Arrays

For each of the following problems, write the code to solve the problem. Each solution should be structured as a method that takes an array as a parameter and returns the result. **You should use the `Array#each` method to solve each problem.**

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: custom-snippet
* language: ruby
* id: 1b34cfce-6816-4747-a7b6-3e7b46ba765e
* title: Array of lengths
* docker_directory_path: /custom-snippets/array_of_lengths
* points: 1
* topics: arrays, enumerables

##### !question

The method `lengths` are given an array of `String` objects, stored in a variable called `my_strings`. You want to use this array to create a new array of `Integer` objects, which represents the `length` of each string. We want to store the resulting array in a variable called `string_lengths`.

##### !end-question

##### !placeholder

```
def lengths(my_strings)

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
* id: 9ec43f6e-2d32-43b1-9f59-cc05a7b287f0
* title: Even or Odd
* docker_directory_path: /custom-snippets/even_or_odd
* points: 1
* topics: arrays, enumerables

##### !question

You are given an array of `Integer` objects, stored in a variable called `my_nums`. You want to use this array to create a new array which contains `String` objects, which say "even" or "odd" depending on the `Integer` in the original array.

##### !end-question

##### !placeholder

```
def even_or_odd(my_nums)

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
* id: 0164385d-da24-4c6a-aa90-36bbaf01b408
* title: Smaller than 4
* docker_directory_path: /custom-snippets/smaller_than_4
* points: 1
* topics: arrays, enumerables

##### !question

You are given an array of `String` objects, stored in a variable called `my_strings`. You want to create a new array which only contains the strings from the original array that have a length that is smaller than 4.

##### !end-question

##### !placeholder

```
def smaller_than_4(my_strings)

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
* id: b0f8fa59-692c-44c0-b2ad-44b03a64d12b
* title: Longest length
* docker_directory_path: /custom-snippets/longest_length
* points: 1
* topics: arrays, enumerables

##### !question

You are given an array of `String` objects, stored in a variable called `my_strings`. You want to use this array to return the `String` that has the longest length. (In a tie, it should return the first `String` with the longest length).

##### !end-question

##### !placeholder

```
def longest_length(my_strings)

end
```

##### !end-placeholder

<!-- other optional sections -->
<!-- !hint - !end-hint (markdown, users can see after a failed attempt) -->
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
<!-- !explanation - !end-explanation (markdown, students can see after answering correctly) -->

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->


## Transforming Arrays into Hashes

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: custom-snippet
* language: ruby
* id: 1cdbc3e6-eca4-4428-8feb-c1523ba6e136
* title: Names to hash with ids
* docker_directory_path: /custom-snippets/array_to_hash
* points: 1
* topics: arrays, enumerables

##### !question

Given this array of `String` names, return an array of Hashes. Each Hash should have the keys `name` and `id`, which will represent their unique identifier in the form of an integer. The ids can start at `1` and then go up by one.

```ruby
NAMES = ['Grumpy', 'Happy', 'Sleepy', 'Bashful', 'Sneezy', 'Dopey', 'Doc']

# => [{:name=>"Grumpy", :id=>1},
# {:name=>"Happy", :id=>2},
# {:name=>"Sleepy", :id=>3},
# {:name=>"Bashful", :id=>4},
# {:name=>"Sneezy", :id=>5},
# {:name=>"Dopey", :id=>6},
# {:name=>"Doc", :id=>7}]
```

##### !end-question

##### !placeholder

```
def array_to_hash_array(names)

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
* id: de17fe3a-4223-4907-970e-701a5adf7ef6
* title: Combining arrays into an array of hashes
* docker_directory_path: /custom-snippets/combine_lists
* points: 1
* topics: arrays, enumerables

##### !question

Given this array of `String` names and this array of `String` specialties, return an array of Hashes. Each Hash should have the keys `name`, `specialty`, and `id`, which will represent their unique identifier in the form of an integer. The ids can start at `1` and then go up by one.

```ruby
names = ['Grumpy', 'Happy', 'Sleepy', 'Bashful', 'Sneezy', 'Dopey', 'Doc']
specialties = ['grump', 'smile', 'nap', 'blush', 'sneeze', 'goof', 'contemplate']

# => [{:name=>"Grumpy", :specialty=>"grump", :id=>1},
# {:name=>"Happy", :specialty=>"smile", :id=>2},
# {:name=>"Sleepy", :specialty=>"nap", :id=>3},
# {:name=>"Bashful", :specialty=>"blush", :id=>4},
# {:name=>"Sneezy", :specialty=>"sneeze", :id=>5},
# {:name=>"Dopey", :specialty=>"goof", :id=>6},
# {:name=>"Doc", :specialty=>"contemplate", :id=>7}]
```

##### !end-question

##### !placeholder

```
def combine_lists(names, specialties)

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
* id: 895d3e76-0651-4d5f-aa13-219ec422e569
* title: Combining arrays into an array of arrays
* docker_directory_path: /custom-snippets/zipper
* points: 1
* topics: arrays, enumerables

##### !question

Given these two arrays of strings, write code that returns an array of arrays. Each element in the larger array should have two elements: the first element is the name, and the second element is the specialty.

```ruby
names = ['Grumpy', 'Happy', 'Sleepy', 'Bashful', 'Sneezy', 'Dopey', 'Doc']
specialities = ['grump', 'smile', 'nap', 'blush', 'sneeze', 'goof', 'contemplate']

# => [["Grumpy", "grump"], ["Happy", "smile"], ["Sleepy", "nap"], ["Bashful", "blush"], ["Sneezy", "sneeze"], ["Dopey", "goof"], ["Doc", "contemplate"]]
```

##### !end-question

##### !placeholder

```
def arrays_of_arrays(names, specialties)

end
```

##### !end-placeholder

<!-- other optional sections -->
<!-- !hint - !end-hint (markdown, users can see after a failed attempt) -->
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
<!-- !explanation - !end-explanation (markdown, students can see after answering correctly) -->

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->



## More Transformations

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: custom-snippet
* language: ruby
* id: c9febfed-6e60-495d-8902-1cf272fae86a
* title: Hashes to strings
* docker_directory_path: /custom-snippets/specialities
* points: 1
* topics: arrays, enumerables

##### !question

Given this array of hashes, iterate through the array and return an array of strings. Each string should be in the following format: `Grumpy's specialty is to GRUMP`, where `Grumpy` is replaced with each name and `GRUMP` is the specialty in capital letters.

```ruby
characters = [{:name=>"Grumpy", :specialty=>"grump", :id=>1},
 {:name=>"Happy", :specialty=>"smile", :id=>2},
 {:name=>"Sleepy", :specialty=>"nap", :id=>3},
 {:name=>"Bashful", :specialty=>"blush", :id=>4},
 {:name=>"Sneezy", :specialty=>"sneeze", :id=>5},
 {:name=>"Dopey", :specialty=>"goof", :id=>6},
 {:name=>"Doc", :specialty=>"contemplate", :id=>7}]

# => ["Grumpy's specialty is to GRUMP",
# "Happy's specialty is to SMILE",
# "Sleepy's specialty is to NAP",
# "Bashful's specialty is to BLUSH",
# "Sneezy's specialty is to SNEEZE",
# "Dopey's specialty is to GOOF",
# "Doc's specialty is to CONTEMPLATE"]
```


##### !end-question

##### !placeholder

```
def specialities(characters)

end
```

##### !end-placeholder

<!-- other optional sections -->
<!-- !hint - !end-hint (markdown, users can see after a failed attempt) -->
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
<!-- !explanation - !end-explanation (markdown, students can see after answering correctly) -->

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

---

# Part 2

Don't do this part until going through the `Enumerable` lectures.

## Using `Enumerable` methods

Rewrite each solution in the section "Iterating through Arrays"

### Bonus

Is there a method from `Enumerable` you can use to solve #7 in "Transforming Arrays into Hashes"? Hint: it is _**not**_ a method covered in the class's Jigsaw activity.

## Conclusion

1. What went well?
1. What was challenging?
1. Which problems were easier? Why?
1. What strategies made the problems easier?
1. What are some differences between arrays and hashes that you learned?
