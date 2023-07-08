# Write a program that takes a number from the user between 0 and 100
# and reports back whether the number is between 0 and 50, 51 and 100,
# or above 100.

# Case 1
# > Choose a number between 0 and 100
# 3
# > Your number is between 0 and 50.
#
# Case 2
# > Choose a number between 0 and 100
# 54
# > Your number is between 51 and 100.
#
# Case 3
# > Choose a number between 0 and 100
# 101
# > Your number is above 100.
#
# Edge case
# > Choose a number between 0 and 100
# -12
# > Invalid number.

puts "Choose a number between 0 and 100"
number = gets.chomp.to_i

if number < 0
  puts "Invalid number."
elsif number > 100
  puts "Your number is above 100."
elsif number <= 100 && number > 50
  puts "Your number is between 51 and 100."
else
  puts "Your number is between 0 and 50."
end

# LS Answer

puts "Please enter a number between 0 and 100."
number = gets.chomp.to_i

if number < 0
  puts "You can't enter a negative number!"
elsif number <= 50
  puts "#{number} is between 0 and 50"
elsif number <= 100
  puts "#{number} is between 51 and 100"
else
  puts "#{number} is above 100"
end
