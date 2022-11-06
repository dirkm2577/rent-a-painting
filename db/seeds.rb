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
Painting.destroy_all


user1 = User.new(email: "test@test.com", password: "123456")

file = URI.open("https://res.cloudinary.com/dfe5bng4a/image/upload/v1667745513/Mona_Lisa_jjh8as.jpg")
painting = Painting.new(
  name: "Mona Lisa",
  description: "The Mona Lisa is an oil painting by Italian artist, inventor, and writer Leonardo da Vinci. Likely completed in 1506, the piece features a portrait of a seated woman set against an imaginary landscape. In addition to being one of the most famous paintings, it is also the most valuable.",
  price: 83400000,
  user: user1
)
painting.photo.attach(io: file, filename: "mona_lisa.jpg", content_type: "image/jpg")
painting.save

file = URI.open("https://res.cloudinary.com/dfe5bng4a/image/upload/v1667747455/Girl_with_a_Pearl_Earring_fpttre.jpg")
painting = Painting.new(
  name: "Girl with a Pearl Earring",
  description: "The painting is a tronie, the Dutch 17th-century description of a 'head' that was not meant to be a portrait. It depicts a European girl wearing 'exotic dress', an 'oriental turban', and what appears to be a very large pearl as an earring. In 2014, Dutch astrophysicist Vincent Icke [nl] raised doubts about the material of the earring and argued that it looks more like polished tin than pearl on the grounds of the specular reflection, the pear shape and the large size of the earring. 
  The work is oil on canvas and is 44.5 cm (17.5 in) high and 39 cm (15 in) wide. It is signed 'IVMeer' but not dated. It is estimated to have been painted around 1665. 
  After the most recent restoration of the painting in 1994, the subtle colour scheme and the intimacy of the girl's gaze toward the viewer have been greatly enhanced. During the restoration, it was discovered that the dark background, today somewhat mottled, was originally a deep enamel-like green. This effect was produced by applying a thin transparent layer of paint—a glaze—over the black background seen now. However, the two organic pigments of the green glaze, indigo and weld, have faded. 
  ",
  price: 30100000,
  user: user1
)
painting.photo.attach(io: file, filename: "girl_with_a_pearl_earring.jpg", content_type: "image/jpg")
painting.save

# file = URI.open("https://res.cloudinary.com/dfe5bng4a/image/upload/v1667745513/Mona_Lisa_jjh8as.jpg")
# painting = Painting.new(
#   name: "Mona Lisa",
#   description: "The Mona Lisa is an oil painting by Italian artist, inventor, and writer Leonardo da Vinci. Likely completed in 1506, the piece features a portrait of a seated woman set against an imaginary landscape. In addition to being one of the most famous paintings, it is also the most valuable.",
#   price: 834000000,
#   user: user1
# )
# painting.photo.attach(io: file, filename: "mona_lisa.jpg", content_type: "image/jpg")
# painting.save

# file = URI.open("https://res.cloudinary.com/dfe5bng4a/image/upload/v1667745513/Mona_Lisa_jjh8as.jpg")
# painting = Painting.new(
#   name: "Mona Lisa",
#   description: "The Mona Lisa is an oil painting by Italian artist, inventor, and writer Leonardo da Vinci. Likely completed in 1506, the piece features a portrait of a seated woman set against an imaginary landscape. In addition to being one of the most famous paintings, it is also the most valuable.",
#   price: 834000000,
#   user: user1
# )
# painting.photo.attach(io: file, filename: "mona_lisa.jpg", content_type: "image/jpg")
# painting.save

# file = URI.open("https://res.cloudinary.com/dfe5bng4a/image/upload/v1667745513/Mona_Lisa_jjh8as.jpg")
# painting = Painting.new(
#   name: "Mona Lisa",
#   description: "The Mona Lisa is an oil painting by Italian artist, inventor, and writer Leonardo da Vinci. Likely completed in 1506, the piece features a portrait of a seated woman set against an imaginary landscape. In addition to being one of the most famous paintings, it is also the most valuable.",
#   price: 834000000,
#   user: user1
# )
# painting.photo.attach(io: file, filename: "mona_lisa.jpg", content_type: "image/jpg")
# painting.save

# file = URI.open("https://res.cloudinary.com/dfe5bng4a/image/upload/v1667745513/Mona_Lisa_jjh8as.jpg")
# painting = Painting.new(
#   name: "Mona Lisa",
#   description: "The Mona Lisa is an oil painting by Italian artist, inventor, and writer Leonardo da Vinci. Likely completed in 1506, the piece features a portrait of a seated woman set against an imaginary landscape. In addition to being one of the most famous paintings, it is also the most valuable.",
#   price: 834000000,
#   user: user1
# )
# painting.photo.attach(io: file, filename: "mona_lisa.jpg", content_type: "image/jpg")
# painting.save
