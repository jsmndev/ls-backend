# Write a while loop that takes input from the user, performs an action
# and only stops when the user types "STOP". Each loop can get info
# from the user.

x = ''
terminator = 'STOP'

while x != terminator
  puts 'Hi, sup?'
  ans = gets.chomp

  if ans == terminator
    break
  else
    puts 'Want me to ask again?'
    x = gets.chomp
  end
end
