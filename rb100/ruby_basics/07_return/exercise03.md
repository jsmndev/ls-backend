## Breakfast, Lunch, or Dinner? (Part 3)
What will the following code print? Why? Don't run it until you've attempted to answer

```ruby
def meal
  return 'Breakfast'
  'Dinner'
end

puts meal
```

This will print 'Breakfast', since line 2 explicitly used the `return` keyword,
the last line ('Dinner') in the method is ignored.

### LS Answer
Based on the knowledge that `return` exits the method, you should be able to
determine that the return value is "Breakfast". Even though "Dinner" is the last
line, when `return` is executed, it tells the method to end, which means
anything after that line won't be processed.
