# Goodbye, not Hello
# Given the following code, invoke a destructive method on `greeting` so that
# Goodbye! is printed instead of Hello!.

greeting = 'Hello!'
puts greeting

# Expected output:
# Goodbye!

greeting.replace('Goodbye!')
puts greeting

# LS Answer
greeting = 'Hello!'

greeting.gsub!('Hello', 'Goodbye')
puts greeting
