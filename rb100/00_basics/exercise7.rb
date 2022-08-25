# SyntaxError: (irb):2: syntax error, unexpected ')', expecting '}'
# from /usr/local/rvm/rubies/ruby-2.5.3/bin/irb:16:in `<main>'

# Got to recreate this error by closing the hash with ) instead of }
# so basically, Ruby is expecting } when closing a hash instead of )

# LS answer
# There is an opening bracket somewhere in the program without a closing 
# bracket following it. It may have happened when creating a hash.
