# What will the following code print to the screen?

def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yippeee")

# The code will not print anything because of the explicit `return`
# that was used before the `puts` call
# The explicit return will return `nil` bec it returns nothing
