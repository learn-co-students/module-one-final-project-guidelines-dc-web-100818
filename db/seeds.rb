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
bernini= Artist.create(name: "Gian Lorenzo Bernini", culture: "Italian", life_span: "1598 - 1680")
warhol= Artist.create(name: "Andy Warhol", culture: "American", life_span: "1928 - 1987")

# Period, total: 6
surrealism = Period.create(name: "Surrealism")
cubism = Period.create(name: "Cubism")
dga = Period.create(name: "Dutch Golden Age")
contemporary = Period.create(name: "Contemporary Art")
expressionism = Period.create(name: "Expressionism")
renaissance = Period.create (name: "Renaissance")
baroque = Period.create (name: "Baroque")
pop = Period.create (name: "Pop")


#  Gallery, total: 5
gal1 = Gallery.create(name: "Dutch painters", floor: 1, theme: "Masters of Dutch 17th century art")
gal2 = Gallery.create(name: "Spanish painters", floor: 3, theme: "Spanish painters from the XX century")
gal3 = Gallery.create(name: "Contemporary sculpture", floor: 1, theme: "Contemporary sculpture from different parts of the world")
gal4 = Gallery.create(name: "Renaissance", floor: 2, theme: "Masters of Italian Renaissance")
gal5 = Gallery.create(name: "Expressionism", floor: 3, theme: "European Expressionism")
gal6 = Gallery.create(name: "Scultures from Europe", floor:1, theme: "European sculptures of the ages")
gal7 = Gallery.create(name: "Modern Art", floor: 2, theme: "Modern Art")



# Artwork, total: 10
night_watch = ArtPiece.create(name: "The Night Watch", classification: "Oil on canvas", period_id: dga.id, artist_id: rembrandt.id, gallery_id: gal1.id)
ww = ArtPiece.create(name: "The Weeping Woman", classification: "Oil on canvas", period_id: cubism.id, artist_id: picasso.id, gallery_id: gal2.id)
memory = ArtPiece.create(name: "The Persistence of Memory", classification: "Oil on canvas", period_id: surrealism.id, artist_id: dali.id, gallery_id: gal2.id)
perro = ArtPiece.create(name: "Perro", classification: "Sculpture", period_id: contemporary.id, artist_id: botero.id, gallery_id: gal3.id)
primavera = ArtPiece.create(name: "Primavera", classification: "Tempera on panel", period_id: renaissance.id, artist_id: botticelli.id)
nu = ArtPiece.create(name: "Nu couché", classification: "Oil on canvas", period_id: expressionism.id, artist_id: modigliani.id, gallery_id: )
david = ArtPiece.create(name: "David", classification: "Sculpture", period_id: renaissance.id , artist_id: michelangelo.id , gallery_id: gal4.id)
saint_teresa = ArtPiece.create(name: "Ecstasy of Saint Teresa", classification: "sculpture", period_id: baroque.id , artist_id: bernini.id , gallery_id: gal6.id)
guitar = ArtPiece.create(name: "Guitar", classification: "Sculpture", period_id: cubism.id, artist_id: picasso.id , gallery_id: gal3.id)
brillo = ArtPiece.create(name: "Brillo Box", classification: "Sculpture", period_id: pop.id , artist_id: warhol.id , gallery_id: gal7.id)
marilyns = ArtPiece.create(name: "Shot Marilyns", classification: "painting", period_id: pop.id , artist_id: warhol.id , gallery_id: gal7.id)
