# Look at Ruby's merge method. Notice that it has two versions.
# What is the difference between merge and merge! ? Write a program
# that uses both and illustrate the differences.

# both has the same functionality, the only difference is that
# merge! is a destructive method, meaning, it mutates the caller
# hash, while merge returns a new hash and does not affect the
# caller.

h1 = {a: 1, b: 2}
h2 = {c: 3}

h1.merge(h2)
# => {a: 1, b: 2, c:3 }
# h1 remains unchanged.

h1.merge!(h2)
# => {a: 1, b: 2, c:3 } <--- this is h1 now, h2 is still {c: 3}


# LS Answer
# The difference is merge! modifies permanently, while merge
# does not

cat = {name: "whiskers"}
weight = {weight: "10 lbs"}
puts cat.merge(weight)
puts cat                   # => {:name=>"whiskers"}
puts weight                # => {:weight=>"10 lbs"}
puts cat.merge!(weight)
puts cat                   # => {:name=>"whiskers", weight=>"10lbs"}
puts weight                # => {:weight=>"10 lbs"}
