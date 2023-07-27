## What's My Value? (Part 8)
What will the following code print, and why? Don't run the code until you have tried to answer.

```ruby
a = 7
array = [1, 2, 3]

array.each do |a|
  a += 1
end

puts a
```

This still prints out 7. Because `a` in the `each` method is the name of its parameter, and it only happens it has the same name of the local variable `a` initialized outside the block. This is called shadowing.

Notes
- Shadowing occurs when a block parameter hides a local variable that is defined outside the block. Since the outer `a` is shadowed, the `a += 1` has no effect on it. In fact, that statement has no effect at all.
