# Multiple Signatures
What do each of these `puts` statements output?

```ruby
a = %w(a b c d e)
puts a.fetch(7)
puts a.fetch(7, 'beats me')
puts a.fetch(7) { |index| index**2 }
```

`Array#fetch` takes in an array index and returns the element of that index.

```ruby
puts a.fetch(7)
# this gives us an IndexError: "index 7 outside of array bounds"

puts a.fetch(7, 'beats me')
# prints "beats me". Array#fetch returns the default value if the given index is
# out of range

puts a.fetch(7) { |index| index**2 }
# prints 49. the block only gets called with the given index as the block's
# argument when the index is out of range. Otherwise, it returns the element.
```
