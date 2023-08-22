# Colorful ThingsA
# The following code throws an error. Find out what is wrong and think about 
# how you would fix it.

colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 'turquoise', 'silver', 'black']
things = ['pen', 'mouse pad', 'coffee mug', 'sofa', 'surf board', 'training mat', 'notebook']

colors.shuffle!
things.shuffle!

i = 0
loop do
  break if i > colors.length

  if i == 0
    puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
  else
    puts 'And a ' + colors[i] + ' ' + things[i] + '.'
  end

  i += 1
end

# This throws the following error:
# `+': no implicit conversion of nil into String (TypeError)
#
#     puts 'And a ' + colors[i] + ' ' + things[i] + '.'

# This is happening because the `things` array do not have the same length
# as the `colors` array. Therefore, when i = 7, things[i] will try to get
# the index 7 element which is non-existing therefore returning `nil`.
# To fix this, we have to change the logic when we would break the loop where i
# it stops when i > things' length - 1

loop do
  break if i > things.length - 1

  puts i

  if i == 0
    puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
  else
    puts 'And a ' + colors[i] + ' ' + things[i] + '.'
  end

  i += 1
end

# Further Exploration
# We might change our arrays in the future and we might not always know which 
# of them is shorter, so picking the shorter one by hand is not the best 
# solution. How can you change the break condition, such that the loop always 
# stops once we hit the end of the shorter array?
#
# We can make it so that it checks first which array is shorter. Then we use
# the shorter one to break the loop
loop do
  break if i > things.length - 1

  puts i

  if i == 0
    puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
  else
    puts 'And a ' + colors[i] + ' ' + things[i] + '.'
  end

  i += 1
end
