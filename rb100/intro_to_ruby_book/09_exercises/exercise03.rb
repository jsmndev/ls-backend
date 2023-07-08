# Now, using the same array from exercise2.rb, use the select method
# to extract all odd numbers into a new array.

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_arr = arr.select { |num| num % 2 != 0 }


# LS Answer
# one line version
new_array = arr.select { |number| number % 2 != 0 }

# multi-line version
new_array = arr.select do |number|
  number % 2 != 0
end
