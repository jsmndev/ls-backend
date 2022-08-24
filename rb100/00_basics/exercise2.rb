# Find the thousands, hundreds, tens and ones place of this
# 4-digit number:
num = 4936

puts num

puts "thousands place: #{num / 1000}"
# num / 1000 results to integer 4 without the remainder 936

puts "hundreds place: #{num % 1000 / 100}"
# using %, we get the remainder of num / 1000:
# num % 1000 = 936
#
# and now we can divide by 100 to get the hundreds place:
# 936 / 100 = 9

puts "tens place: #{num % 100 / 10}"
# num / 100 results to 49 without the remainder of 36
# using %, we get the remainder of num / 100:
# num % 100 = 36
# 36 / 10 = 3

puts "ones place: #{num % 10}"
# num / 10 results to 0 without the remainder of 6
# using %, we get the remainder of num / 10:
# num % 10 = 6
