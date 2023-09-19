# Repeat Yourself
Write a method that takes two arguments, a string and a positive integer, and
prints the string as many times as the integer indicates.

### Example:
```ruby
repeat('Hello', 3)
```

### Output:
```
Hello
Hello
Hello
```

#### Understand the Problem
Print repeatedly the given string based on the given positive integer

#### Edge cases
Inputs:
- string: "Hello"
- counter: 0

Output:
- Must be positive integer

---

Inputs:
- string: "Hello"
- counter: -1

Output:
- Must be positive integer


#### Algorithm
```
- Set counter = given positive integer
- While counter > 0
    print given string
    decrement counter by 1
```
