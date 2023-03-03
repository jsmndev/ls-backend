# What does the following error message tell you?
#
# SyntaxError: (irb):2: syntax error, unexpected ')', expecting '}'
#   from /usr/local/rvm/rubies/ruby-2.5.3/bin/irb:16:in `<main>'
#
# It looks like the compiler expects a closing bracket but you gave it
# a closing parenthesis or there is an opening bracket somewhere in the program
# without a closing bracket following it. This might have happened when creating
# a hash.

{ a: 1)
