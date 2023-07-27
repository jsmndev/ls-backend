## What's My Value? (Part 4)
What will the following code print, and why? Don't run the code until you have tried to answer.

```ruby
a = "Xyzzy"

def my_value(b)
  b[2] = '-'
end

my_value(a)
puts a
```

This will print "Xy-zy", because string are mutable, and we're re-assigning the string's index 2 position to '-'. Therefore, the new string object that's being returned by the my_value method is "Xy-zy".


Notes
- `String#[]=` is a mutating method
