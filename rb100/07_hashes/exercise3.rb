# Using some of Ruby's built-in Hash methods, write a program that
# loops through a hash and prints all of the keys. Then write a
# program that does the same thing except printing the values.
# Finally. write a program that prints both.

twice_members = { nayeon: 1,
                  jeongyeon: 2,
                  momo: 3,
                  sana: 4,
                  jihyo: 5,
                  mina: 6,
                  dahyun: 7,
                  chaeyoung: 8,
                  tzuyu: 9
                }


# print keys
twice_members.each_key { |name| puts "hi i'm #{name}" }

# print values
twice_members.each_value { |order| puts order }

twice_members.each do |name, order|
  str_order =
    case order
    when 1
      "1st"
    when 2
      "2nd"
    when 3
      "3rd"
    else
      "#{order}th"
    end

  puts "#{name} is the #{str_order} member"
end

# LS Answer
opposites = {positive: "negative", up: "down", right: "left"}

opposites.each_key { |key| puts key }
opposites.each_value { |value| puts value }
opposites.each { |key, value| puts "The opposite of #{key} is #{value}" }
