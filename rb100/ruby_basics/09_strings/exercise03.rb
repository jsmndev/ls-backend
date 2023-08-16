# Ignoring Case
# Using the following code, compare the value of name with the string 'RoGeR' 
# while ignoring the case of both strings. Print true if the values are the 
# same; print false if they aren't. Then, perform the same case-insensitive 
# comparison, except compare the value of name with the string 'DAVE' instead 
# of 'RoGeR'.

name = 'Roger'

puts name.downcase == 'RoGeR'.downcase
puts name.downcase == 'DAVE'.downcase

# or
puts name.casecmp('RoGeR') == 0
puts name.casecmp('DAVE') == 0

# or
puts (name <=> 'Roger') == 0
puts (name <=> 'DAVE') == 0

# or
puts name.casecmp?('RoGeR')
puts name.casecmp?('DAVE')

# Notes
# cascmp
# - if the value of the calling string (`name`) is less than the provided
#   argument ('RoGeR'), then it will return -1. Similarly, if the provided
#   argument is less than the calling string, it will return 1
#   if name < 'RoGeR', return -1
#   if name > 'RoGeR', return 1
#   if name == 'RoGeR', return 0
