# Excercise 3
# Write a program that uses a hash to store a list of movie titles with the year they came out.
# Then use the puts command to make your program print out the year of each movie to the screen.
# The output for your program should look something like this.
# 1975
# 2004
# 2013
# 2001
# 1981

# What I put before looking at your video
movies = { "Captain America" => 2011,
  "Ironman" => 2008,
  "Hulk" => 2009,
  "The Avengers" => 2012,
  "Thor" => 2010,}

  movies.each{ |movie, year| puts year}


# after watching your solution
movies = { :captain_america => 2011,
            :ironman => 2008,
            :hulk => 2009,
            :the_avengers => 2012,
            :thor => 2010,}

puts movies[:captain_america]
puts movies[:ironman]
puts movies[:hulk]
puts movies[:the_avengers]
puts movies[:thor]
