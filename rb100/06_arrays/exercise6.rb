# You run the following code...

names = ['bob', 'joe', 'susan', 'margaret']
names['margaret'] = 'jody'

# ...and get the following error message:
#
# TypeError: no implicit conversion of String into Integer
#  from (irb):2:in `[]='
#  from (irb):2
#  from /Users/username/.rvm/rubies/ruby-2.5.3/bin/irb:12:in `<main>'
#
#  What is the problem and how can it be fixed?

# The problem is that Array types expect indexes to be an integer and not
# a string. To fix this, we can change the "index" 'margaret' to 3 like so:

names[3] = 'jody'
# => ["bob", "joe", "susan", "jody"]


# LS Answer
# You are attempting to set the value of an item in an array using a string
# as the key. Arrays are indexed with integers, not strings. You would modify
# the array by doing the following:
names[3] = 'jody' # => ["bob", "joe", "susan", "jody"]
