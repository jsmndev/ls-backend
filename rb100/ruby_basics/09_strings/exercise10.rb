# Are You There?
# Using the following code, print true if colors includes the color 'yellow'
# and print false if it doesn't. Then, print true if colors includes the
# color 'purple' and print false if it doesn't.

colors = 'blue pink yellow orange'

puts colors.include?('yellow')
puts colors.include?('purple')

# Further Exploration
# Let's say colors is changed to the following value:

colors = 'blue boredom yellow'

# and we invoke #included? as we did before:

puts colors.include?('red')

# What will the output be? Why?
# true.
# Because the string `colors` has a substring 'red' within the word 'boredom'.
# But if we split by empty space that will turn that in an array and check
# if it includes the word 'red' like:
puts colors.split(' ').include?('red')
# This will print false.
