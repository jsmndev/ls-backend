## Breakfast, Lunch, or Dinner? (Part 6)
What will the following code print? Why? Don't run it until you've attempted to answer

```ruby
def meal
  return 'Breakfast'
  'Dinner'
  puts 'Dinner'
end

puts meal
```

Knowing that `return` will end the method, it will not execute the code after
that. So this will print `'Breakfast'`

### LS Answer
Based on what we've learned so far, we know that `return` immediately exits the
method and returns the provided value. Knowing this, we can confidently say that
the return value of `meal` will be "Breakfast". `return` will be executed upon
the invocation of `meal`, which means `meal` will immediately end and return the
value provided by `return`.
