# Look at the following programs...
#
# x = 0
# 3.times do
#   x += 1
# end
# puts x
#
#
# and...
#
# y = 0
# 3.times do
#   y += 1
#   x = y
# end
# puts
# x
#
#
# What does x print to the screen in each case? Do they both give
# errors? Are the errors different? Why?
#
# The first program outputs 3, because x can be accessed within the
# times method therefore every iteration, it reassigns new value to it
# with the += operation
#
# The second program throws an error because x is nowhere to be found
# outside the scope of the `times` method. x only exists within
# the scope of the `times` method.
#
# LS answer:
# The first prints 3 to the screen. The second throws an error `undefined
# local variable or method` because `x` is not available as it is
# created within the scope of the `do/end` block.
