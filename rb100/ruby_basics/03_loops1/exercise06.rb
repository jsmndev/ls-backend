# Print While
# Using a while loop, print 5 random numbers between 0 and 99 (inclusive).
# The code below shows an example of how to begin solving this exercise.
# numbers = []
#
# while <condition>
#   # ...
# end
#
# Example output (your numbers will most likely be different):
# 62
# 96
# 31
# 16
# 36

numbers = 0..99
count = 0

while count != 5
  puts rand(numbers)
  count += 1
end

# LS Answer
numbers = []

while numbers.size < 5
  numbers << rand(100)
end

puts numbers
