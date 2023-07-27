## What's My Value? (Part 7)
What will the following code print, and why? Don't run the code until you have tried to answer.

```ruby
a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a
```

This will print out 3, which is the last element of `array`. This is because `a` is visible inside the `each` block, `a` is re-assigned 3 times and the last element in the iteration is `3`.

Notes
- A method invocation with a block has more open scoping rules; the block can use and modify lcoal variables that are defined outside the block.
