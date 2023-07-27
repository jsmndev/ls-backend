## What's My Value? (Part 6)
What will the following code print, and why? Don't run the code until you have tried to answer.

```ruby
a = 7

def my_value(b)
  b = a + a
end

my_value(a)
puts a
```

This will throw an error because within the scope of `my_value` method, the variable `a` is undefined. --This is happening because methods have their own scope and the variable `a` outside the method is not visible inside the method.

Notes
- Method definitions are self-contained with respect to local variables.
- Local variables initialized inside the method definition are not visible outside the method definition, and local variables initialized outside the method definition are not visible inside the method definition. However, local variables will be visible (via closures) inside blocks, procs, and lambdas
