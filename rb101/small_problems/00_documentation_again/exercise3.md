# Default Arguments in the Middle
Consider the following method and a call to that method:

```ruby
def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)
```

Use the ruby documentation to determine what this code will print.

From the Ruby doc, it said that "when the method defines default arguments you 
do not need to supply all the arguments to the method. Ruby will fill in the 
missing arguments in-order."

`my_method(4, 5, 6)` only passes 3 arguments and `my_method` can accept up to 
4 arguments, having 2 default values: `b = 2` and `c = 3`. Ruby first assigns
the passed in arguments to the parameters that do not have default values. First
it assigns `4` to `a`, then `6` to `d`. This leaves only the arguments with
default values. Sinc `5` has not been assigned to a value yet, it is given to
`b` (because Ruby will fill in the arguments in order), then `c` uses its
default value of `3`.

Therefore, `my_method(4, 5, 6)` will print the following:

```
[4, 5, 3, 6]
```

## LS Answer
The documentation shows that positional arguments are filled out first, then the
default arguments are set with any values supplied, and, finally, default values
are applied to anything remaining.
