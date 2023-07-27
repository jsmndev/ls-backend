## What's My Value? (Part 5)
What will the following code print, and why? Don't run the code until you have tried to answer.

```ruby
a = "Xyzzy"

def my_value(b)
  b = 'yzzyX'
end

my_value(a)
puts a
```

This will still print the original value of `a` which is "Xyzzy". That's because even though `b` references the value of `a`, `=` operator broke that relation, and `b` now points to a new object "yzzyX".


Notes
- Assignment **never** changes the value of an object; instead, it creates a new object, and then stores a reference to that object in the variable on the left.
