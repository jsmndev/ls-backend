# Warriors and WizardsA
# We started writing an RPG game, but we have already run into an error message. 
# Find the problem and fix it.

# Each player starts with the same basic stats.

player = { strength: 10, dexterity: 10, charisma: 10, stamina: 10 }

# Then the player picks a character class and gets an upgrade accordingly.

character_classes = {
  warrior: { strength:  20 },
  thief:   { dexterity: 20 },
  scout:   { stamina:   20 },
  mage:    { charisma:  20 }
}

puts 'Please type your class (warrior, thief, scout, mage):'
input = gets.chomp.downcase

player.merge(character_classes[input])

puts 'Your character stats:'
puts player

# The issue is that `input` is always a string, but the keys in 
# `character_classes` are symbols. that's why character_classes[input]
# always returns a nil.
# To fix this, we have to convert the input into a symbol using #to_sym.

puts 'Please type your class (warrior, thief, scout, mage):'
input = gets.chomp.downcase

# After fixing the conversion from string to symbol, we still find an issue
# in the program where the player stats doesn't update. That's because #merge
# is non-destructive therefore we're always just printing the original
# player hash. To fix this, we have to store the player.merge(character_classes[input])
# in a variable and print that instead. We can just reassign it to the player variable:

player = player.merge(character_classes[input.to_sym])

puts 'Your character stats:'
puts player
