# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

# Painting.create(name: "Mona Lisa", description: "Painted between 1503 and 1517, Da Vinci’s alluring portrait has been dogged by two questions since the day it was made: Who’s the subject and why is she smiling?", price: 100)
# Painting.new(name: "Girl with a Pearl", description: "Johannes Vermeer’s 1665 study of a young woman is startlingly real and startlingly modern, almost as if it were a photograph.", price: 90, image_url: "/app/assets/images/Girl_with_a_Pearl.jpg")
# Painting.new(name: "The starry Night", description: "Vincent Van Gogh’s most popular painting, The Starry Night was created by Van Gogh at the asylum in Saint-Rémy, where he’d committed himself in 1889.", price: 95, image_url: "/app/assets/images/The_starry_Night.jpg")
# Painting.new(name: "The Kiss", description: "Opulently gilded and extravagantly patterned, The Kiss, Gustav Klimt’s fin-de-siècle portrayal of intimacy, is a mix of Symbolism and Vienna Jugendstil, the Austrian variant of Art Nouveau.", price: 100, image_url: "/app/assets/images/The_Kiss.jpg")
# Painting.destroy_all

file = URI.open("https://res.cloudinary.com/dach7c7ct/image/upload/v1667645192/The_Kiss_ita1ap.jpg")
painting = Painting.new(name: "The Kiss", description: "Gustav Klimt’s fin-de-siècle portrayal of intimacy", price: 100, user_id: 1)
painting.photo.attach(io: file, filename: "the_kiss.jpg", content_type: "image/jpg")
painting.save
