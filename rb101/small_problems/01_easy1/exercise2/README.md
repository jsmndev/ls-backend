# Odd
Write a method that takes one integer argument, which may be positive, negative
or zero. This method returns `true` if the number's absolute value is odd. You
may assume that the argument is a valid integer value.

### Examples:

```ruby
puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true
```

Keep in mind that you're not allowed to use `#odd?` or `#even?` in your
solution.

---

#### Understand the problem
Find out if the absolute value of the given integer is odd.

we know we can use `%` to know if a number is odd or not:
```
if number % 2 == 0 this means it is divisible by 2 therefore an even number
```

#### Algorithm
- Given an integer (can be positive, negative or 0)
- Convert the integer to its absolute value
- If the absolute value is divisible by 2, return false
- otherwise, return true
