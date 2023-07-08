# Write a program that checks if the sequence of characters "lab" exists
# in the following strings. If it does exist, print out the word.
#
# "laboratory"
# "experiment"
# "Pans Labyrinth"
# "elaborate"
# "polar bear"

random_strings = ["laboratory", "experiment", "Pans Labyrinth", "elaborate", "polar bear"]

# Solution 1
def has_lab?(string)
  if string =~ /lab/
    puts string
  end
end

random_strings.each { |str| has_lab?(str) }

# Solution 2

def has_lab?(string)
  string =~ /lab/
end

has_lab_strings =
  random_strings.select { |str| has_lab?(str) }

puts has_lab_strings


# LS Answer
def check_in(word)
  if /lab/ =~ word
    puts word
  else
    puts "No match"
  end
end

check_in("laboratory")
check_in("experiment")
check_in("Pans Labyrinth")
check_in("elaborate")
check_in("polar bear")
