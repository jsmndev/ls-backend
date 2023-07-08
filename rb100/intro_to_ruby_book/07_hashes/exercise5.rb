# What method could you use to find out if a Hash contains a
# specific value in it? Write a program that verifies that the
# value is within the hash.

# You can use the value? method to find out if a hash contains
# a specific value in it. It will return true or false whether
# the passed in argument is in the hash.

hash = {a: 100, b: 200, c: 300}

hash.value?(100) # => true
hash.value?(98)  # => false

# LS Answer

opposites = {positive: "negative", up: "down", right: "left"}

if opposites.value?("negative")
  puts "Got it!"
else
  puts "Nope!"
end
