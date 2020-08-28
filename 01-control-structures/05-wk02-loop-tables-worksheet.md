# Loop Table Worksheet!

<iframe src="https://adaacademy.hosted.panopto.com/Panopto/Pages/Embed.aspx?id=f0ec7393-36cc-41fe-a7d8-ac25001ebe9b&autoplay=false&offerviewer=true&showtitle=true&showbrand=false&start=0&interactivity=all" height="405" width="720" style="border: 1px solid #464646;" allowfullscreen allow="autoplay"></iframe>

Sometimes it is difficult to trace through how a complicated loop works.  It can be helpful to create a table recording values of each variable or expression for each iteration of a loop.  

For example:

```ruby
x = 0

while x <= 5
  if x.odd?
    puts x
  end
  x += 1
end
```

We could trace through the program with the following table:

| Iteration | Printed Output | End Value of `x` |
| --------- | -------------- | ---------------- |
| 1         |                | 1                |
| 2         | 1              | 2                |
| 3         |                | 3                |
| 4         | 3              | 4                |
| 5         |                | 5                |
| 6         | 5              | 6                |

In the table above we track each iteration the printed output and the value of `x` at the end of the loop body.


1) Create a loop table filling in the values for **loop count**, **value of x**, and **output**.

```ruby
[2,5,8,11,14].each do |x|
  puts 2 * x + 7
end
```


2) Complete the following loop table by filling in the values for **loop count**, **value of critter**, and **output**.
```ruby
["kittens", "meerkats", "red pandas"].each do |critter|
  affirmation = "I am as amazing as " + critter + "!"
  puts affirmation
end
```

3) Complete the following loop table by filling in the values for **loop count**, **value of letter**, **value of s1**, **value of s2**, and **output**.
```ruby
a = ["m", "p", "e", "u", "o", "r", "w", "r"]
s1 = ""
s2 = ""

a.each do |letter|
  if (a.index(letter))%2==0
    s1=s1+letter
    puts s1
  else
    s2=s2+letter
    puts s2
  end
end
```

## Conclusion

When you see a problem that has a loop or nested loops, use a loop table to track the variables and their values.  Creating such tables is a great way to conceptualize and track variable changes in a loop.

