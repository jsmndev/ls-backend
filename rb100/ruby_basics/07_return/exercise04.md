## Breakfast, Lunch, or Dinner? (Part 4)
What will the following code print? Why? Don't run it until you've attempted to answer

```ruby
def meal
  puts 'Dinner'
  return 'Breakfast'
end

puts meal
```

This will print:
```
Dinner
Breakfast
```

Because once `meal` is invoked, line 2 gets executed, printing "Dinner". And
then returns "Breakfast" making outer `puts` print the return value
of `meal`.

### Notes
- `#puts` outputs the value it's given and returns `nil`.
