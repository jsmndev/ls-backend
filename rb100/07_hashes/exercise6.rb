# Given the following code...

x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}

# What's the difference between the two hashes that were created?

# The key types are different. my_hash uses symbol :x as the key
# for "some value", while my_hash2 uses string "hi there" that is
# stored in the variable x as the key.


# LS Answer
# The first hash that was created used a symbol x as the key. The
# second hash used the string value of the x variable as the key.
