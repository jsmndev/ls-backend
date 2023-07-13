## Required Arguments
Assume you have this Array:
```ruby
a = %w(a b c d e)
```
How would you use `Array#insert` to insert the numbers `5`, `6`, and `7` between elements with values `'c'` and `'d'`?

```ruby
a.insert(3, 5, 6, 7)
```
