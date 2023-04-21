# Write a program that iterates over an array and build a new array that is
# the result of incrementing each value in the original array by a value of 2.
# You should have two arrays at the end of this program, the original array and
# the new array you've crated. Print both arrays to the screen using the
# p method instead of puts

nums = [1, 2, 3]
new_nums = nums.map { |n| n + 2 }

p nums
p new_nums

# LS Answer

arr = [1, 2, 3, 4, 5]
new_arr = []

arr.each do |n|
  new_arr << n + 2
end

p arr
p new_arr

# or

arr = [1, 2, 3, 4, 5]

new_arr = arr.map do |n|
  n + 2
end

p arr
p new_arr
