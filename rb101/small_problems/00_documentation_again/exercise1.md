# Class and Instance Methods
Locate the ruby documentation for methods `File::path` and `File#path`. How are they different?

I can't find the `File#path` in Ruby 3.2.2 documentation (which is the
version I'm on) in the `File` class, but I am still able to access it in `irb`.

- [`File::path`](https://ruby-doc.org/3.2.2/File.html#method-c-path)


But their difference is that, from the Ruby doc 2.5.0, [`File#path`](https://ruby-doc.org/core-2.5.0/File.html#method-i-path) is an instance method that returns the pathname as a string that's used to create a file, while `File::path` is a class method that returns the string representation of the path.

### LS Answer
Both methods can be found on the documentation page for the File class in the
Core API section. `File::path` is a class method, while `File#path` is an
instance method.

#### Notes
Class methods are called on the class, while instance methods are called on
objects. Thus:

```ruby
puts File.path('bin')
```

calls the class method `File::path` since we're calling it on the `File` class,
while:

```ruby
f = File.new('my-file.txt')
puts f.path
```

calls the instance method `File#path` since we're calling it on an object of the
`File` class, namely `f`.

☝️ Pay attention when reading the documentation; make sure you are using a class
method when you need a class method, and an instance method when you need an
instance method.
