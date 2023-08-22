# Multiply By Five
# When the user inputs 10, we expect the program to print The result is 50!, 
# but that's not the output we see. Why not?

def multiply_by_five(n)
  n * 5
end

puts "Hello! Which number would you like to multiply by 5?"
number = gets.chomp

puts "The result is #{multiply_by_five(number)}!"

# This is happening because what we are really trying to multiply is the
# string '10' that came from the user input and multiplying that string by
# 5. Therefore the program prints a new string "1010101010".
#
# To fix this, we need to make sure that the user input gets converted to
# an integer so that `multiply_by_five` always multiplies the same type.
# or we could also validate the parameter being passed in to the method
# before doing the operation

def multiply_by_five(n)
  n * 5
end

puts "Hello! Which number would you like to multiply by 5?"
number = gets.chomp.to_i

puts "The result is #{multiply_by_five(number)}!"

# or

def multiply_by_five(n)
  n.to_i * 5
end

puts "Hello! Which number would you like to multiply by 5?"
number = gets.chomp

puts "The result is #{multiply_by_five(number)}!"
