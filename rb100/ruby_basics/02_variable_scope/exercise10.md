## What's My Value? (Part 10)
What will the following code print, and why? Don't run the code until you have tried to answer.

```ruby
a = 7
array = [1, 2, 3]

def my_value(ary)
  ary.each do |b|
    a += b
  end
end

my_value(array)
puts a
```

This will throw an error, because even though we have a method invocation with a block, that block is inside of a method definition. Therefore, `a` is undefined in the method definition scope because method definitions are self contained with respect to variables.
