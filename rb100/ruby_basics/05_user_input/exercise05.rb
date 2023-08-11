# Launch School Printer (Part 1)
# Write a program that prints 'Launch School is the best!' repeatedly until a
# certain number of lines have been printerd. The program should obtain the
# number of lines from the user, and should insist that at least 3 lines are
# printed.
#
# For now, just use #to_i to convert the input value to an Integer, and check
# that result instead of trying to insist on a valid number; validation of
# numeric input is a topic with a fair number of edge conditions that are
# beyonf the scope of this exercise.
#
# Examples:
#
# $ ruby lsprint.rb
# >> How many output lines do you want? Enter a number >= 3:
# 5
# Launch School is the best!
# Launch School is the best!
# Launch School is the best!
# Launch School is the best!
# Launch School is the best!
#
# $ ruby lsprint.rb
# >> How many output lines do you want? Enter a number >= 3:
# 2
# >> That's not enough lines.
# >> How many output lines do you want? Enter a number >= 3:
# 3
# Launch School is the best!
# Launch School is the best!
# Launch School is the best!

loop do
  puts '>> How many output lines do you want? Enter a number >= 3:'
  number = gets.to_i

  if number >= 3
    puts "Launch School is the best!\n" * number
    break
  else
    puts ">> That's not enough lines."
  end
end

# LS Answer
number_of_lines = nil
loop do
  puts '>> How many output lines do you want? Enter a number >= 3:'
  number_of_lines = gets.to_i
  break if number_of_lines >= 3
  puts ">> That's not enough lines."
end

while number_of_lines > 0
  puts 'Launch School is the best!'
  number_of_lines -= 1
end
