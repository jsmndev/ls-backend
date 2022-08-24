movies = { zorro: 1975,
          the_day_after_tomorrow: 2004,
          thor: 2013,
          harry_potter: 2001,
          excalibur: 1981 }

puts movies[:zorro]
puts movies[:the_day_after_tomorrow]
puts movies[:thor]
puts movies[:harry_potter]
puts movies[:excalibur]

movies.map { |_, v| puts v }
