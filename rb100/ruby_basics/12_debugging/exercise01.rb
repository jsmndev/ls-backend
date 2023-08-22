# Reading Error Messages
# You come across the following code. What errors does it raise for the given 
# examples and what exactly do the error messages mean?

def find_first_nonzero_among(numbers)
  numbers.each do |n|
    return n if n.nonzero?
  end
end

# Examples

find_first_nonzero_among(0, 0, 1, 0, 2, 0)
find_first_nonzero_among(1)

# exercise01.rb:5:in `find_first_nonzero_among': wrong number of arguments 
# (given 6, expected 1) (ArgumentError)
#     from exercise01.rb:13:in `<main>'

# This error means that find_first_nonzero_among method receives the wrong
# number of arguments. As you can see in the method definition, it only requires
# one parameter and expects that parameter to be an array
#
# But this invocation: find_first_nonzero_among(0, 0, 1, 0, 2, 0)
# gave it more than 1. and this invocation: find_first_nonzero_among(1)
# gave it an integer.
