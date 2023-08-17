# More Than One
# In the code below, an array containing different types of pets is assigned
# to pets

pets = ['cat', 'dog', 'fish', 'lizard']

my_pets = pets.select do |pet|
  pet == 'fish' || pet == 'lizard'
end

puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"
# or
puts "I have a pet #{my_pets.first} and a pet #{my_pets.last}!"
# or
puts "I have #{my_pets.map { |p| "a pet #{p}" }.join(" and ")}!"

# LS Answer
my_pets = pets[2..3]
puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"
