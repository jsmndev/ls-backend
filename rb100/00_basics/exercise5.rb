require 'pry'

factorial_5 = 5 * 4 * 3 * 2 * 1
factorial_6 = 6 * 5 * 4 * 3 * 2 * 1
factorial_7 = 7 * 6 * 5 * 4 * 3 * 2 * 1
factorial_8 = 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1

puts factorial_5
puts factorial_6
puts factorial_7
puts factorial_8

def factorial(num)
  if num == 1
    return num
  else
    return num * factorial(num - 1)
  end
end

def factorial2(num)
  counter = num - 1
  result = num

  while counter > 0 do
    result = result * counter
    counter = counter - 1
  end

  return result
end

def factorial3(num)
  counter = 1
  result = 1

  while counter <= num do
    result = result * counter
    counter = counter + 1
  end

  return result
end

