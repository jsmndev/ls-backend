def is_odd?(number)
  number.abs % 2 != 0
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

# Further Exploration

def is_oddv2?(number)
  number.remainder(2) != 0
end

puts is_oddv2?(2)    # => false
puts is_oddv2?(5)    # => true
puts is_oddv2?(-17)  # => true
puts is_oddv2?(-8)   # => false
puts is_oddv2?(0)    # => false
puts is_oddv2?(7)    # => true
