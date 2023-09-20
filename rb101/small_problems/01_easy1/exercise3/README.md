# Stringy Strings
Write a method that takes one argument, a positive integer, and return a string
of alternating 1s and 0s, always starting with 1. The length of the strings
should match the given integer.

### Examples
```ruby
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
```

The tests above should print `true`.

---

#### Algorithm
- Given a positive integer called counter
- Set a variable called 'indexes' store an empty array
- While counter > 0
    append counter in indexes
    counter -= 1

- Set a variable called 'binary_code' and store an empty string
- Use indexes to iterate each element
    if current element's index is even,
        binary_code += '1'
    otherwise
        binary_code += '0'
- Return binary_code

