# Add two strings together that, when concatenated, return your first
# and last name as your full name in one string.
#
# "<Firstname> <Lastname>"
#
# For example, if your name is John Doe, think about how you can put
# "John" and "Doe" together to get "John Doe".

# We can use the + operator to concatenate strings together:

puts 'John ' + 'Doe'

# Another way to do this is by string interpolation:

first_name = 'John'
last_name = 'Doe'

puts "#{first_name} #{last_name}"

# String interpolation allows the variables to be inserted inside
# of a string by using a special syntax, a hash and a pair of
# curly braces around the variable name.
# Note that string interpolation only works with double quotes.
