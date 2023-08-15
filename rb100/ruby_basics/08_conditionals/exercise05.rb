# Truthy Number
# What will the following code print? Why? Don't run it until you've attempted
# to answer

number = 7

if number
  puts "My favorite number is #{number}."
else
  puts "I don't have a favorite number."
end

# this will print "My favorite number is 7." because the if condition evaluates
# `number` as a truthy value therefore running the if clause.

# Notes
# In Ruby, every expression evaluates as true when used in a condition. The
# only two exceptions to this are false and nil. Therefore, "My favorite number is 7."
# will print regardless of `number`'s value as long as it's truthy.
