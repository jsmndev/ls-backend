# Using the hash you created from the previous exercise, demonstrate how you
# would access Joe's email and Sally's phone number.

contacts["Joe Smith"][:email]
contacts["Sally Johnson"][:phone]

# LS Answer
puts "Joe's email is: #{contacts["Joe Smith"][:email]}"
puts "Sally's phone number is: #{contacts["Sally Johnson"][:phone]}"
