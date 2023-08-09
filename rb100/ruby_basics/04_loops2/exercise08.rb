# Only Even
# Using `next`, modify the code below so that it only prints positive integers
# that are even.
#
# number = 0
#
# until number == 10
#   number += 1
#   puts number
# end

number = 0

until number == 10
  number += 1

  if number.even?
    puts number
  else
    next
  end
end

# LS Answer
number = 0

until number == 10
  number += 1
  next if number.odd?
  puts number
end

# Further Exploration
# Why did `next` have to be placed after the incrementation of `number` and
# before `#puts`?
#
# if it is placed before `number += 1`, it will create an infinite loop.
# On the first loop, it will check if 0 is odd and that evaluates to false,
# So it won't skip it, the program continues:
# - number += 1 gets executed
# - prints 1
# On the second loop, it will check if 1 is odd and that evaluates to true.
# This is where the inifinite loop gets created because it skips the iteration,
# and it goes back again to the `next if number.odd?`, ergo infinite loop.
#
# it is also placed before `#puts` to avoid printing odd numbers.
