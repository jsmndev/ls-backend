# Make and Model
# Using the following code, write a method called car that takes two arguments
# and prints a string containing the value of both arguments.
#
# car('Toyota', 'Corolla')
#
# Expected output:
# Toyota Corolla

def car(make, model)
  puts "#{make} #{model}"
end

car('Toyota', 'Corolla')

# Further Exploration
# Remove the #puts call from the car method. Modify your program so it still
# prints the result.
#
# How do the return values of car differ with and without the #puts?
def car(make, model)
  "#{make} #{model}"
end

puts car('Toyota', 'Corolla')

# with the #puts within `car`, the return value is `nil` because that's the
# return value of #puts. On the other hand, without #puts, it returns the
# concatenated string of make and model because that's the last line in the
# method.
