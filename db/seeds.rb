require_relative '../config/environment.rb'

dali = Artist.create(name: "Salvador Dali", culture: "Spanish", life_span: "1904 - 1989")
picasso = Artist.create(name: "Pablo Picasso", culture: "Spanish", life_span: "1881 - 1973")
rembrandt = Artist.create(name: "Rembrandt Hermenszoon van Rijn", culture: "Dutch", life_span: "1606 - 1669")
botero = Artist.create(name: "Fernando Botero", culture: "Colombian", life_span: "born 1932")

surrealism = Period.create(name: "Surrealism")
cubism = Period.create(name: "Cubism")
dga = Period.create(name: "Dutch Golden Age")
contemporary = Period.create(name: "Contemporary Art")


night_watch = ArtPiece.create(name: "The Night Watch", classification: "Oil on canvas", period_id: 3, artist_id: 3, gallery_id: 1)
ww = ArtPiece.create(name: "The Weeping Woman", classification: "Oil on canvas", period_id: 2, artist_id: 2, gallery_id: 2)
memory = ArtPiece.create(name: "The Persistence of Memory", classification: "Oil on canvas", period_id: 1, artist_id: 1, gallery_id: 2)
perro = ArtPiece.create(name: "Perro", classification: "Sculpture", period_id: 4, artist_id: 4, gallery_id: 3)

gal1 = Gallery.create(name: "Dutch painters", floor: 1, theme: "Masters of Dutch 17th century art")
gal2 = Gallery.create(name: "Spanish painters", floor: 3, theme: "Spanish painters from the XX century")
gal3 = Gallery.create(name: "Contemporary sculpture", floor: 1, theme: "Contemporary sculpture from different parts of the world")
