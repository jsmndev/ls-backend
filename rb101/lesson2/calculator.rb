# Ask for two numbers
puts ">> First number:"
first_number = Kernel.gets().chomp().to_i()

puts ">> Second number:"
second_number = Kernel.gets().chomp().to_i()

# Ask for the type of operation to perform: add, subtract, multiply or divide
puts ">> Choose an opration:"
puts "add, subtract, multiply or divide"
operation = Kernel.gets().chomp()

result =
  case operation.downcase
  when "add"
    first_number + second_number

  when "subtract"
    first_number - second_number

  when "multiply"
    first_number * second_number

  when "divide"
    first_number / second_number

  else
    nil
  end

# Display the result
if result.nil?
  puts "Invalid operation!"
else
  puts "The result is: #{result}"
end
