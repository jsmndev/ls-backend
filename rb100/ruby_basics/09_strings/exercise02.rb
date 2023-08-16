# Quote Confusion
# Modify the following code so that double-quotes are used instead of single-quotes.
#
# puts 'It\'s now 12 o\'clock.'
#
# Expected output:
# It's now 12 o'clock.

puts "It's now 12 o'clock."

# Notes
# single-quotes don't allow for escape sequences, except for escaping
# single-quotes, like '12 o\'clock'

# Further Exploration
# It's possible to write a string without surrounding it with double- or single-
# quotes. Instead of using double-quotes, we could write the example string 
# like this:

%Q(It's now 12 o'clock.) # => "It's now 12 o'clock."

# `%Q` is an alternative to double-quoted strings. There's also an alternative
# for single-quoted strings: `%q`
#
# What about strings that contain double- and single-quotes? How would you
# write those using the alternate syntax?
# from the Ruby doc, it says "Any combination of adjacent single-quote, double-
# quote, percent strings will be concatenated as long as a percent-string is 
# not last."
