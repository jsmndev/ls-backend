# Mandatory Blocks
The `Array#bsearch` method is used to search ordered `Array`s more quickly than
`#find` and `#select` can. Assume you have the following code:

```ruby
a = [1, 4, 8, 11, 15, 19]
```

How would you search this `Array` to find the first element whose value exceeds
`8`?

I looked up the `bsearch` method in the `Array` class. Finding it there, there
isn't much to see, just the method's simple description but no examples on how
to use it. But it has a link that leads to Binary Searching: https://ruby-doc.org/3.2.2/bsearch_rdoc.html

This explains thoroughly the methods relating to binary search. So I was able to
write a program that finds the first element whose value exceeds 8 using
`Array#bsearch`:

```ruby
a.bsearch { |e| e > 8 }
```
