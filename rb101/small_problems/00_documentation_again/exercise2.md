# Optional Arguments Redux
Assume you have the following code:

```ruby
require 'date'

puts Date.civil
puts Date.civil(2016)
puts Date.civil(2016, 5)
puts Date.civil(2016, 5, 13)
```

What will each of the 4 `puts` statements print?

Looking at the documentation, it said that it is the same as `Date.new`, and
`Date.new` returns a new Date object.

The 4 `puts` statements will print the following:

```
-4712-01-01
2016-01-01
2016-05-01
2016-05-13
```
