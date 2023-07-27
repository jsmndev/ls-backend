## What's My Value? (Part 3)
What will the following code print, and why? Don't run the code until you have tried to answer.

```ruby
a = 7

def my_value(b)
  a = b
end

my_value(a + 5)
puts a
```

Still prints 7. Since numbers are immutable, `a + 5` does not change the value of top-level variable `a`. And `a` in `my_value` is just basically a variable being initialized and `b` is being assigned to it.

### LS Answer
Once again, the result is 7. Once again, the local variable `a` inside the `my_value` method definition is not visible outside the `my_value` method definition. Furtheremore, the local variable `a` at the top level is not visible inside `my_value` because method definitions are self-contained with respect to local variables.
