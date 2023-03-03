# Write a program that uses a hash to store a list of movie titles
# with the year they came out. Then use the `puts` command to make
# your program print out the year of each movie to the screen. The
# output for your program should look something like this.
#
# 1975
# 2004
# 2013
# 2001
# 1981

movies = {
  :movie_1 => 1975,
  :movie_2 => 2004,
  :movie_3 => 2013,
  :movie_4 => 2001,
  :movie_5 => 1981
}

puts movies[:movie_1]
puts movies[:movie_2]
puts movies[:movie_3]
puts movies[:movie_4]
puts movies[:movie_5]

# new syntax for creating hashes as of Ruby 1.9

movies = {
  movie_1: 1975,
  movie_2: 2004,
  movie_3: 2013,
  movie_4: 2001,
  movie_5: 1981
}
