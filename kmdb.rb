# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy.
# - Movie data includes the movie title, year released, MPAA rating,
#   and studio.
# - There are many studios, and each studio produces many movies, but
#   a movie belongs to a single studio.
# - An actor can be in multiple movies.
# - Everything you need to do in this assignment is marked with TODO!

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Table and columns should match the domain model. Execute the migration
#   files to create the tables in the database. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids.
#   Delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through the results to display output similar to the
#   sample "report" below. (10 points)

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Warner Bros.
# The Dark Knight        2008           PG-13  Warner Bros.
# The Dark Knight Rises  2012           PG-13  Warner Bros.

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
# TODO!
Studio.destroy_all
Movie.destroy_all
Actor.destroy_all
Role.destroy_all


# Generate models and tables, according to the domain model.
# TODO!

# Insert data into the database that reflects the sample data shown above.
# Do not use hard-coded foreign key IDs.
# TODO!
new_studio = Studio.new
new_studio["studio_name"] = "Warner Bros."
new_studio.save

new_movie1 = Movie.new
new_movie1["title"] = "Batman Begins"
new_movie1["year_released"] = "2005"
new_movie1["rated"] = "PG-13"
new_movie1["studio_id"] = new_studio["id"]
new_movie1.save

new_movie2 = Movie.new

new_movie2["title"] = "The Dark Knight"
new_movie2["year_released"] = "2008"
new_movie2["rated"] = "PG-13"
new_movie2["studio_id"] = new_studio["id"]
new_movie2.save

new_movie3 = Movie.new
new_movie3["title"] = "The Dark Knight Rises"
new_movie3["year_released"] = "2012"
new_movie3["rated"] = "PG-13"
new_movie3["studio_id"] = new_studio["id"]
new_movie3.save

Christian_Bale = Actor.new
Christian_Bale["name"] = "christian Bale"
Christian_Bale.save

Michael_Caine = Actor.new
Michael_Caine["name"] = "Michael Caine"
Michael_Caine.save

Liam_Neeson = Actor.new
Liam_Neeson["name"] = "Liam Neeson"
Liam_Neeson.save

Katie_Holmes = Actor.new
Katie_Holmes["name"] = "Katie Holmes"
Katie_Holmes.save

Gary_Oldman = Actor.new
Gary_Oldman["name"] = "Gary Oldman"
Gary_Oldman.save

Heath_Ledger = Actor.new
Heath_Ledger["name"] = "Heath Ledger"
Heath_Ledger.save

Aaron_Eckhart = Actor.new
Aaron_Eckhart["name"] = "Aaron Eckhart"
Aaron_Eckhart.save

Maggie_Gyllenhaal = Actor.new
Maggie_Gyllenhaal["name"] = "Maggie Gyllenhaal"
Maggie_Gyllenhaal.save

Tom_Hardy = Actor.new
Tom_Hardy["name"] = "Tom Hardy"
Tom_Hardy.save

Joseph_Gordon_Levitt = Actor.new
Joseph_Gordon_Levitt["name"] = "Joseph Gordon-Levitt"
Joseph_Gordon_Levitt.save

Anne_Hathaway = Actor.new
Anne_Hathaway["name"] = "Anne Hathaway"
Anne_Hathaway.save


bruce_wayne = Role.new
bruce_wayne["character_name"] = "Bruce Wayne"
bruce_wayne["movie_id"] = new_movie1["id"]
bruce_wayne["actor_id"] = Christian_Bale["id"]
bruce_wayne.save

bruce_wayne = Role.new
bruce_wayne["character_name"] = "Bruce Wayne"
bruce_wayne["movie_id"] = new_movie2["id"]
bruce_wayne["actor_id"] = Christian_Bale["id"]
bruce_wayne.save

bruce_wayne = Role.new
bruce_wayne["character_name"] = "Bruce Wayne"
bruce_wayne["movie_id"] = new_movie3["id"]
bruce_wayne["actor_id"] = Christian_Bale["id"]
bruce_wayne.save

alfred = Role.new
alfred["character_name"] = "Alfred"
alfred["movie_id"] = new_movie1["id"]
alfred["actor_id"] = Michael_Caine["id"]
alfred.save

alfred = Role.new
alfred["character_name"] = "Alfred"
alfred["movie_id"] = new_movie2["id"]
alfred["actor_id"] = Michael_Caine["id"]
alfred.save

alfred = Role.new
alfred["character_name"] = "Alfred"
alfred["movie_id"] = new_movie3["id"]
alfred["actor_id"] = Michael_Caine["id"]
alfred.save

ras_al_ghul = Role.new
ras_al_ghul["character_name"] = "Ra's Al Ghul"
ras_al_ghul["movie_id"] = new_movie1["id"]
ras_al_ghul["actor_id"] = Liam_Neeson["id"]
ras_al_ghul.save

#check this bc two actors play Rachel
rachel_dawes = Role.new
rachel_dawes["character_name"] = "Rachel Dawes"
rachel_dawes["movie_id"] = new_movie1["id"]
rachel_dawes["actor_id"] = Katie_Holmes["id"]
rachel_dawes.save

rachel_dawes = Role.new
rachel_dawes["character_name"] = "Rachel Dawes"
rachel_dawes["movie_id"] = new_movie2["id"]
rachel_dawes["actor_id"] = Maggie_Gyllenhaal["id"]
rachel_dawes.save

commissioner_gordon = Role.new
commissioner_gordon["character_name"] = "Commissioner Gordon"
commissioner_gordon["movie_id"] = new_movie1["id"]
commissioner_gordon["actor_id"] = Gary_Oldman["id"]
commissioner_gordon.save

Joker = Role.new
Joker["character_name"] = "Joker"
Joker["movie_id"] = new_movie2["id"]
Joker["actor_id"] = Heath_Ledger["id"]
Joker.save

harvey_dent = Role.new
harvey_dent["character_name"] = "Harvey Dent"
harvey_dent["movie_id"] = new_movie2["id"]
harvey_dent["actor_id"] = Aaron_Eckhart["id"]
harvey_dent.save

harvey_dent = Role.new
harvey_dent["character_name"] = "Harvey Dent"
harvey_dent["movie_id"] = new_movie3["id"]
harvey_dent["actor_id"] = Aaron_Eckhart["id"]
harvey_dent.save

Bane = Role.new
Bane["character_name"] = "Bane"
Bane["movie_id"] = new_movie3["id"]
Bane["actor_id"] = Tom_Hardy["id"]
Bane.save

john_Blake = Role.new
john_Blake["character_name"] = "John Blake"
john_Blake["movie_id"] = new_movie3["id"]
john_Blake["actor_id"] = Joseph_Gordon_Levitt["id"]
john_Blake.save

selina_Kyle = Role.new
selina_Kyle["character_name"] = "Selina Kyle"
selina_Kyle["movie_id"] = new_movie3["id"]
selina_Kyle["actor_id"] = Anne_Hathaway["id"]
selina_Kyle.save

#Check data inputs
#puts "studios: #{Studio.all.count}"
#puts "movies: #{Movie.all.count}"
#puts "Actors: #{Actor.all.count}"
#puts "Roles: #{Role.all.count}"

# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

movies = Movie.all
for movie in movies  
    title = movie["title"]
    year_released = movie["year_released"]
    rated = movie["rated"]

studios = Studio.find_by({"id" => movie["studio_id"]})
    studio_name = studios["studio_name"]

puts "#{title}        #{year_released}          #{rated}          #{studio_name}"
end

# Query the movies data and loop through the results to display the movies output.
# TODO!

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

roles = Role.all
for role in roles
    role_name = role["character_name"]
    actor = Actor.find_by({"id" => role["actor_id"]})
    actor_name = actor["name"]

    movie = Movie.find_by({"id" => role["movie_id"]})
    movie_title = movie["title"]

puts "#{movie_title}        #{actor_name}       #{role_name}"
end


# Query the cast data and loop through the results to display the cast output for each movie.
# TODO!
