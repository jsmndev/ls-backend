## What's My Value? (Part 8)
What will the following code print, and why? Don't run the code until you have tried to answer.

```ruby
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a
```

This will print out an error that will say `a` is undefined. Variables initialized inside a block is not visible outside the block.

Notes
- The local variable `a` that is initialized in the block passed to the `each` method has a scope that is local to that block. Since there is no local variable named `a` initialized in a scope external to the scope of that block, the expression `a = element` is initialization and NOT reassignment.
