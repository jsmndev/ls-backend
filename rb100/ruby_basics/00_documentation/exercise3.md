## Return Value of `while`
Using the ruby documentation, derermine what value a `while` loop returns.
- it returns `nil`, unless `break` is used to supply a value

Example:
```ruby
a = 0

while a < 10
  p a
  break a * 5 if a == 5
  a += 1
end
```

This will output the following if you run the snippet in `irb`:
```ruby
0
1
2
3
4
5
=> nil
```
