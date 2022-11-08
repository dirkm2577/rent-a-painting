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
User.destroy_all

puts "Creating User"
user1 = User.new(email: "test@test.com", password: "123456")

puts "Creating Paintings"
file = URI.open("https://res.cloudinary.com/dfe5bng4a/image/upload/v1667745513/Mona_Lisa_jjh8as.jpg")
painting = Painting.new(
  name: "Mona Lisa",
  description: "The Mona Lisa is an oil painting by Italian artist, inventor, and writer Leonardo da Vinci. Likely completed in 1506, the piece features a portrait of a seated woman set against an imaginary landscape. In addition to being one of the most famous paintings, it is also the most valuable.",
  price: 80,
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
  price: 3000,
  user: user1
)
painting.photo.attach(io: file, filename: "girl_with_a_pearl_earring.jpg", content_type: "image/jpg")
painting.save

file = URI.open("https://res.cloudinary.com/dfe5bng4a/image/upload/v1667932334/1200px-Van_Gogh_-_Starry_Night_-_Google_Art_Project_ovmmsw.jpg")
painting = Painting.new(
  name: "The Starry Night",
  description: "The Starry Night, a moderately abstract landscape painting (1889) of an expressive night sky over a small hillside village, one of Dutch artist Vincent van Gogh’s most celebrated works.
  The oil-on-canvas painting is dominated by a night sky roiling with chromatic blue swirls, a glowing yellow crescent moon, and stars rendered as radiating orbs. One or two cypress trees, often described as flame-like, tower over the foreground to the left, their dark branches curling and swaying to the movement of the sky that they partly obscure. Amid all this animation, a structured village sits in the distance on the lower right of the canvas. Straight controlled lines make up the small cottages and the slender steeple of a church, which rises as a beacon against rolling blue hills. The glowing yellow squares of the houses suggest the welcoming lights of peaceful homes, creating a calm corner amid the painting’s turbulence.
  Van Gogh painted The Starry Night during his 12-month stay at the Saint-Paul-de-Mausole asylum near Saint-Rémy-de-Provence, France, several months after suffering a breakdown in which he severed a part of his own ear with a razor. While at the asylum, he painted during bursts of productivity that alternated with moods of despair. As an artist who preferred working from observation, van Gogh was limited to the subjects that surrounded him—his own likeness, views outside his studio window, and the surrounding countryside that he could visit with a chaperone.
  ",
  price: 5000,
  user: user1
)
painting.photo.attach(io: file, filename: "mona_lisa.jpg", content_type: "image/jpg")
painting.save

file = URI.open("https://res.cloudinary.com/dfe5bng4a/image/upload/v1667932561/scream_custom-9ef574d2014bd441879317ecf242ad060e34e743-s1100-c50_cpu2wr.jpg")
painting = Painting.new(
  name: "The Scream",
  description: "The Scream, painting by Edvard Munch that became his most famous work. He completed two versions in 1893, another in 1895, and yet another likely in 1910.
  The Scream is one of the most familiar images in modern art. It stemmed from a panic attack that Munch suffered in 1892. He described how it occurred, as he was strolling along a path outside Kristiania (now Oslo): “The sun was setting and the clouds turned as red as blood. I sensed a scream passing through nature. I felt as though I could actually hear the scream. I painted this picture, painted the clouds like real blood. The colors shrieked.” Munch represented the scream through a series of undulating lines that pressed in on the figure like shock waves, reducing its face to a primal image of fear. He accentuated this effect by showing that his two companions were unscathed, thus implying that the trauma came from his own mind, rather than the world outside. On a copy of the picture, Munch wrote: “Could only have been painted by a madman.”
  The Scream has become a popular representation of the human condition. The painting’s central figure has appeared throughout Western popular culture in everything from television to emoji, and it has been parodied in motion pictures, including, arguably, Macaulay Culkin’s iconic grimace in John Hughes’s Home Alone.
  ",
  price: 25000,
  user: user1
)
painting.photo.attach(io: file, filename: "mona_lisa.jpg", content_type: "image/jpg")
painting.save

file = URI.open("https://res.cloudinary.com/dfe5bng4a/image/upload/v1667932709/640px-Sandro_Botticelli_-_La_nascita_di_Venere_-_Google_Art_Project_-_edited_erhopa.jpg")
painting = Painting.new(
  name: "The Birth of Venus",
  description: "The Birth of Venus (Italian: Nascita di Venere [ˈnaʃʃita di ˈvɛːnere]) is a painting by the Italian artist Sandro Botticelli, probably executed in the mid 1480s. It depicts the goddess Venus arriving at the shore after her birth, when she had emerged from the sea fully-grown (called Venus Anadyomene and often depicted in art). The painting is in the Uffizi Gallery in Florence, Italy.
  Although the two are not a pair, the painting is inevitably discussed with Botticelli's other very large mythological painting, the Primavera, also in the Uffizi. They are among the most famous paintings in the world, and icons of the Italian Renaissance; of the two, the Birth is better known than the Primavera.] As depictions of subjects from classical mythology on a very large scale they were virtually unprecedented in Western art since classical antiquity, as was the size and prominence of a nude female figure in the Birth. It used to be thought that they were both commissioned by the same member of the Medici family, but this is now uncertain.
  They have been endlessly analysed by art historians, with the main themes being: the emulation of ancient painters and the context of wedding celebrations (generally agreed), the influence of Renaissance Neo-Platonism (somewhat controversial), and the identity of the commissioners (not agreed). Most art historians agree, however, that the Birth does not require complex analysis to decode its meaning, in the way that the Primavera probably does. While there are subtleties in the painting, its main meaning is a straightforward, if individual, treatment of a traditional scene from Greek mythology, and its appeal is sensory and very accessible, hence its enormous popularity.
  ",
  price: 15000,
  user: user1
)
painting.photo.attach(io: file, filename: "mona_lisa.jpg", content_type: "image/jpg")
painting.save

file = URI.open("https://res.cloudinary.com/dfe5bng4a/image/upload/v1667932839/1200px-Michelangelo_-_Creation_of_Adam__28cropped_29_o3smdn.jpg")
painting = Painting.new(
  name: "Creation of Adam",
  description: "In 1505, Michelangelo was invited back to Rome by the newly elected Pope Julius II. He was commissioned to build the Pope's tomb, which was to include forty statues and be finished in five years.
  Under the patronage of the Pope, Michelangelo experienced constant interruptions to his work on the tomb in order to accomplish numerous other tasks. Although Michelangelo worked on the tomb for 40 years, it was never finished to his satisfaction. It is located in the Church of S. Pietro in Vincoli in Rome and is most famous for his central figure of Moses, completed in 1516. Of the other statues intended for the tomb, two known as the Rebellious Slave and the Dying Slave, are now in the Louvre.
  During the same period, Michelangelo painted the ceiling of the Sistine Chapel, which took approximately four years to complete (1508–1512). According to Condivi's account, Bramante, who was working on the building of St Peter's Basilica, resented Michelangelo's commission for the Pope's tomb and convinced the Pope to commission him in a medium with which he was unfamiliar, in order that he might fail at the task.
  Michelangelo was originally commissioned to paint the Twelve Apostles on the triangular pendentives that supported the ceiling, and cover the central part of the ceiling with ornament. Michelangelo persuaded Pope Julius to give him a free hand and proposed a different and more complex scheme, representing the Creation, the Fall of Man, the Promise of Salvation through the prophets, and the genealogy of Christ. The work is part of a larger scheme of decoration within the chapel which represents much of the doctrine of the Catholic Church.
  The composition stretches over 500 square metres of ceiling, and contains over 300 figures. At its centre are nine episodes from the Book of Genesis, divided into three groups: God's Creation of the Earth; God's Creation of Humankind and their fall from God's grace; and lastly, the state of Humanity as represented by Noah and his family. On the pendentives supporting the ceiling are painted twelve men and women who prophesied the coming of Jesus; seven prophets of Israel and five Sibyls, prophetic women of the Classical world. Among the most famous paintings on the ceiling are The Creation of Adam, Adam and Eve in the Garden of Eden, the Deluge, the Prophet Jeremiah and the Cumaean Sibyl.
  ",
  price: 35000,
  user: user1
)
painting.photo.attach(io: file, filename: "mona_lisa.jpg", content_type: "image/jpg")
painting.save
