# Say Hello
# Modify the code below so "Hello!" is printed 5 times.
# say_hello = true
# 
# while say_hello
#   puts 'Hello!'
#   say_hello = false
# end

say_hello = true
counter = 1

while say_hello
  puts 'Hello!'
  counter += 1
  if counter > 5 then say_hello = false end
end

puts "======"

say_hello = true
counter = 1

while say_hello
  puts 'Hello!'
  counter += 1
  say_hello = false if counter > 5
end

puts "======"

say_hello = true
counter = 1

while say_hello
  puts 'Hello!'
  counter += 1
  counter > 5 ? say_hello = false : say_hello
end

# LS Answer
say_hello = true
count = 0

while say_hello
  puts 'Hello!'
  count += 1
  say_hello = false if count == 5
end 
