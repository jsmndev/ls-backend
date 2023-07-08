# Same as exercise1.rb, but only print out values greater than 5.

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# Solution 1
arr.each do |number|
  if number > 5
    puts number
  end
end

# Solution 2
greater_than_5 = arr.select { |num| num > 5 }

puts greater_than_5


# LS Answer

# one line version
arr.each { |number| puts number if number > 5 }

# multi-line version
arr.each do |number|
  if number > 5
    puts number
  end
end
