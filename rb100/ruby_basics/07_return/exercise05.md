## Breakfast, Lunch, or Dinner? (Part 5)
What will the following code print? Why? Don't run it until you've attempted to answer

```ruby
def meal
  'Dinner'
  puts 'Dinner'
end

p meal
```

It will print the following:
```
Dinner
nil
```
Because the last line in `meal` is `puts 'Dinner'` and so `puts` will print the
string "Dinner" and `meal` implicitly return the return value of `puts` which is
`nil`. And `p meal` will print out `nil` since `p` has the abiloty to inspect 
the real return value of an expression. As for `puts`, if you try to 
`puts nil`, it will just print nothing in the screen.

### LS Answer
When looking at this method, we know that the last line is `puts 'Dinner'`,
therefore, the return value of `meal` is the evaluated result of that line.
Based on the previous exercise, we know that the return value of `#puts` is
always `nil`. Putting both of those together results in the return value of
`meal` being `nil`.

However, two values are printed, not just `nil`. This is because there is a
`#puts` and a `#p` (we use `#p` so that `nil` is visible in the output).
