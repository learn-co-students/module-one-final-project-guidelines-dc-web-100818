require_relative '../config/environment.rb'
require 'pry'

Artist.delete_all
Period.delete_all
ArtPiece.delete_all
Gallery.delete_all

# Artist, total: 15
dali = Artist.create(name: "Salvador Dali", culture: "Spanish", life_span: "1904 - 1989")
picasso = Artist.create(name: "Pablo Picasso", culture: "Spanish", life_span: "1881 - 1973")
rembrandt = Artist.create(name: "Rembrandt van Rijn", culture: "Dutch", life_span: "1606 - 1669")
botero = Artist.create(name: "Fernando Botero", culture: "Colombian", life_span: "born 1932")
modigliani = Artist.create(name: "Amedeo Modigliani", culture: "Italian", life_span: "1884 - 1920")
munch = Artist.create(name: "Edvard Munch", culture: "Norwegian", life_span: "1863 - 1944")
kandinsky = Artist.create(name: "Wassily Kandinsky", culture: "Russian", life_span: "1866 - 1944")
michelangelo = Artist.create(name: "Michelangelo Buonarroti", culture: "Italian", life_span: "1475 - 1564")
botticelli = Artist.create(name: "Sandro Botticelli", culture: "Italian", life_span: "1445 - 1510")
magritte = Artist.create(name: "René Magritte", culture: "Belgian", life_span: "1898 - 1967")
vermeer = Artist.create(name: "Johannes Vermeer", culture: "Dutch", life_span: "1632 - 1675")
basquiat = Artist.create(name: "Jean-Michel Basquiat", culture: "American", life_span: "1960 - 1988")
= Artist.create(name: "", culture: "", life_span: " - ")
= Artist.create(name: "", culture: "", life_span: " - ")
= Artist.create(name: "", culture: "", life_span: " - ")

# Period, total: 6
surrealism = Period.create(name: "Surrealism")
cubism = Period.create(name: "Cubism")
dga = Period.create(name: "Dutch Golden Age")
contemporary = Period.create(name: "Contemporary Art")
expressionism = Period.create(name: "Expressionism")
renaissance = Period.create (name: "Renaissance")
neoexpress = Period.new(name: "Neo-expressionism")


#  Gallery, total: 5
gal1 = Gallery.create(name: "Dutch painters", floor: 1, theme: "Masters of Dutch 17th century art")
gal2 = Gallery.create(name: "Spanish painters", floor: 3, theme: "Spanish painters from the XX century")
gal3 = Gallery.create(name: "Contemporary sculpture", floor: 1, theme: "Contemporary sculpture from different parts of the world")
gal4 = Gallery.create(name: "Renaissance", floor: 2, theme: "Masters of Italian Renaissance")
gal5 = Gallery.create(name: "Expressionism", floor: 3, theme: "European Expressionism")
= Gallery.create(name: "", floor: , theme: "")
= Gallery.create(name: "", floor: , theme: "")
= Gallery.create(name: "", floor: , theme: "")
= Gallery.create(name: "", floor: , theme: "")


# Artwork, total: 20
night_watch = ArtPiece.create(name: "The Night Watch", classification: "Oil on canvas", period_id: dga.id, artist_id: rembrandt.id, gallery_id: gal1.id)
ww = ArtPiece.create(name: "The Weeping Woman", classification: "Oil on canvas", period_id: cubism.id, artist_id: picasso.id, gallery_id: gal2.id)
memory = ArtPiece.create(name: "The Persistence of Memory", classification: "Oil on canvas", period_id: surrealism.id, artist_id: dali.id, gallery_id: gal2.id)
perro = ArtPiece.create(name: "Perro", classification: "Sculpture", period_id: contemporary.id, artist_id: botero.id, gallery_id: gal3.id)
primavera = ArtPiece.create(name: "Primavera", classification: "Tempera on panel", period_id: renaissance.id, artist_id: botticelli.id)
nu = ArtPiece.create(name: "Nu couché", classification: "Oil on canvas", period_id: expressionism.id, artist_id: modigliani.id, gallery_id: gal5.id)
nude = ArtPiece.create(name: "Female nude", classification: "Oil on canvas", period_id: expressionism.id, artist_id: modigliani.id, gallery_id: gal5.id)
girl = ArtPiece.create(name: "Girl with a Pearl Earring", classification: "Oil on canvas", period_id: dga.id, artist_id: vermeer.id, gallery_id: gal1.id)
milkmaid = ArtPiece.create(name: "The Milkmaid", classification: "Oil on canvas", period_id: dga.id, artist_id: vermeer.id, gallery_id: gal1.id)
venus = ArtPiece.create(name: "The Birth of Venus", classification: "Tempera on canvas", period_id: renaissance.id, artist_id: botticelli.id, gallery_id: gal4.id)
reve = ArtPiece.create(name: "Le Rêve", classification: "Oil on canvas", period_id: cubism.id, artist_id: picasso.id, gallery_id: gal2.id)
compvii = ArtPiece.create(name: "Composition VII", classification: "Oil on canvas", period_id: expressionism.id, artist_id: kandinsky.id, gallery_id: gal5.id)
hollywood = ArtPiece.create(name: "Hollywood Africans", classification: "Acrylic, Colored chalk", period_id: neoexpress.id, artist_id: basquiat.id, gallery_id: gal7.id)
= ArtPiece.create(name: "", classification: "", period_id: , artist_id: , gallery_id:)
= ArtPiece.create(name: "", classification: "", period_id: , artist_id: , gallery_id:)
= ArtPiece.create(name: "", classification: "", period_id: , artist_id: , gallery_id:)
= ArtPiece.create(name: "", classification: "", period_id: , artist_id: , gallery_id:)
= ArtPiece.create(name: "", classification: "", period_id: , artist_id: , gallery_id:)
= ArtPiece.create(name: "", classification: "", period_id: , artist_id: , gallery_id:)
= ArtPiece.create(name: "", classification: "", period_id: , artist_id: , gallery_id:)
