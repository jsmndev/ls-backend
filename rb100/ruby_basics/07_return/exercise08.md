## Counting Sheep (Part 2)
What will the following code print? Why? Don't run it until you've attempted to
answer.

```ruby
def count_sheep
  5.times do |sheep|
    puts sheep
  end
  10
end

puts count_sheep
```

This will print the following:
```
0
1
2
3
4
10
```
This is the same results from the previous exercise, the only difference is what
`count_sheep`'s return value is. In this case, it's 10.

### LS Answer
This exercise continues the previous exercise, except with one variation:
`Integer#times` no longer the last line in `count_sheep`. `#times` still returns
the initial integer, but this time nothing is done with the return value.
Instead, 10 is the implicit return value of `count_sheep` because it's the last
line evaluated.
