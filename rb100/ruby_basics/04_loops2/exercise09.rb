# First to Five
# The following code increments `number_a` and `number_b` by either 0 or 1.
# `loop` is used so that the variables can be incremented more than once,
# however, `break` stops the loop after the first iteration. Use `next` to
# modify the code so that the loop iterates until either `number_a` or
# `number_b` equals `5`. Print `"5 was reached!"` before breaking out of the
# loop
#
# number_a = 0
# number_b = 0
#
# loop do
#   number_a += rand(2)
#   number_b += rand(2)
#
#   break
# end

number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)

  next if ![number_a, number_b].include?(5)
  puts "5 was reached! #{number_a} #{number_b}"

  break
end

# LS Answer
number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)

  next unless number_a == 5 || number_b == 5
  puts "5 was reached! #{number_a} #{number_b}"

  break
end

# Further Exploration
# Is using `next` the best option for this example? Could you use an if/else
# statement instead?

loop do
  if number_a == 5 || number_b == 5
    puts "5 was reached! #{number_a} #{number_b}"
    break
  else
    number_a += rand(2)
    number_b += rand(2)
  end
end
