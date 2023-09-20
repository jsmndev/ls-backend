def stringy(number)
  binary_code = ''

  number.times do |i|
    if i.even?
      binary_code += '1'
    else
      binary_code += '0'
    end
  end

  binary_code
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

# Further Exploration
def stringyv2(number, start_with = 1)
  binary_code = ''
  end_with = start_with == 1 ? 0 : 1

  number.times do |i|
    if i.even?
      binary_code += start_with.to_s
    else
      binary_code += end_with.to_s
    end
  end

  binary_code
end

puts stringyv2(6) == '101010'
puts stringyv2(9) == '101010101'
puts stringyv2(4, 0) == '0101'
puts stringyv2(7) == '1010101'
