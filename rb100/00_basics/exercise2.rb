# Use the modulo operator, division, or a combination of both to take
# a 4 digit number and find the digit in the: 1) thousands place
# 2) hundreds place 3) tens place 4) ones place

number = 4936

thousands = number / 1000
# => 4. ez

# remember that the modulo operator returns the remainder
hundreds = number % 1000
# => 936
# we can now divide 936 by 100 to get 9
hundreds = hundreds / 100
# => 9

# Repeat ze pattern for the rest
tens = number % 1000 % 100 / 10
# => 3

ones = number % 1000 % 100 % 10
# => 6

### Simplification

# for the tens place, 4936 / 100 = 49 with a remainder of 36
# therefore we can simply get rid of '% 1000' and just do
tens = number % 100 / 10

# for the ones place, 4936 / 10 = 493 with a remainder of 6
# therefore we can simply get the ones place by doing 4936 % 10

ones = number % 10
# => 6
