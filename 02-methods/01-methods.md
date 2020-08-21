# Methods

## Method Vocabulary

This vocab list will reference the following code:

```ruby
def sum(a, b, c)
  result = a + b + c
  return result
end

number = sum(5, 17, 106)
puts number
```

Term             | Description | Example&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
---              | ---         | -------------------
Method           | A section of code with a name. Organizes code so it's easier to read, and lets us do the same thing many times. | `def` through `end`
Method Signature | The name and parameters of a method. Answers the question "how do I invoke this?" | `sum(a, b, c)`
Parameter        | A variable used to store input to a method. Specified in the method signature. | `a`, `b`, `c`
Return           | Immediately exit a method, and optionally send a result back to whoever called it. Uses Ruby's `return` keyword. If no result is supplied, the returned value will be `nil`. | `return`,<br>`return result`
Invoke           | Run a method. Also known as _calling_ the method. The value returned by the method can be used immediately, stored in a variable, or ignored. | `number = sum(5, 17, 106)`
Argument          | The value to be used for a particular parameter. Specified when the method is invoked. May be a literal value or a variable. | `5`, `17`, `106`

