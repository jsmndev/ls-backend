# Why does the following code...

def execute(block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

# Gives us the following error when we run it?
#
# exercise5.rb:3:in `execute': wrong number of arguments (given 0, expected 1) (ArgumentError)
# from exercise5.rb:7:in `<main>'

# This error is saying that the execute method definition expects 1 argument, but it was not
# given the proper number of argument. I think Ruby thinks that the call to the execute method is
# we forgot to give it an argument and the block beside it is just an independent block that has
# no connection with the execute method. <--this is happening because we missed putting the & beside
# the block parameter when defining the execute method.


# LS Answer
# The method parameter block is missing the ampersand sign & that allows
# a block to be passed as a parameter.
