## Breakfast, Lunch, or Dinner? (Part 1)
What will the following code print? Why? Don't run it until you've attempted to answer

```ruby
def meal
  return 'Breakfast'
end

puts meal
```

It will print the string 'Breakfast' because that is what is being returned in the meal method.

### LS Answer
- The code would return the string `'Breakfast'` with or without the `return` on
    line 2 because line 2 is the last (and only) line executed in the `meal`
    method

### Notes
- Every method returns the evaluated result, or return value, of the last line
    that is executed.

