# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database"
Film.destroy_all
puts "Database cleaned"
#
#
puts "OK"
#
#
print "Film 1..."
Film.create(titre: "Wonder Woman 1984", apercu: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", url_affiche: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", note: 6.9)
puts "OK"
#

print "Film 2..."
Film.create(titre: "The Shawshank Redemption", apercu: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison", url_affiche: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", note: 8.7)
puts "OK"
#
print "Film 3..."
Film.create(titre: "Titanic", apercu: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", url_affiche: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", note: 7.9)
puts "OK"
#
print "Film 4..."
Film.create(titre: "Ocean's Eight", apercu: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.", url_affiche: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg", note: 7.0)
puts "OK"

print "#{Film.count} films generated successfully"
