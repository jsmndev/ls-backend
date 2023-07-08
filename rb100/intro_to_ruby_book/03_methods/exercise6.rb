# What does the following error message tell you?
#
# ArgumentError: wrong number of arguments (1 for 2)
#   from (irb):1:in `calculate_product'
#   from (irb):4
#   from /Users/username/.rvm/rubies/ruby-2.5.3/bin/irb:12:in `<main>'
#
# This error tells you that the method calculate_product expects 2
# arguments but only given 1
#
# LS Answer:
# You are calling a method called `calculate_product` that requires
# two arguments, but you are only providing one.

def calculate_product(a, b)
  a * b
end

calculate_product(1)
