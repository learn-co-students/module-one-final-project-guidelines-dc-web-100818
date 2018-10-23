require_relative '../config/environment.rb'
require 'pry'

Artist.delete_all
Period.delete_all
ArtPiece.delete_all
Gallery.delete_all

dali = Artist.create(name: "Salvador Dali", culture: "Spanish", life_span: "1904 - 1989")
picasso = Artist.create(name: "Pablo Picasso", culture: "Spanish", life_span: "1881 - 1973")
rembrandt = Artist.create(name: "Rembrandt Hermenszoon van Rijn", culture: "Dutch", life_span: "1606 - 1669")
botero = Artist.create(name: "Fernando Botero", culture: "Colombian", life_span: "born 1932")

surrealism = Period.create(name: "Surrealism")
cubism = Period.create(name: "Cubism")
dga = Period.create(name: "Dutch Golden Age")
contemporary = Period.create(name: "Contemporary Art")

night_watch = ArtPiece.create(name: "The Night Watch", classification: "Oil on canvas", period_id: dga.id, artist_id: rembrandt.id, gallery_id: gal1.id)
ww = ArtPiece.create(name: "The Weeping Woman", classification: "Oil on canvas", period_id: cubism.id, artist_id: picasso.id, gallery_id: gal2.id)
memory = ArtPiece.create(name: "The Persistence of Memory", classification: "Oil on canvas", period_id: surrealism.id, artist_id: dali.id, gallery_id: gal2.id)
perro = ArtPiece.create(name: "Perro", classification: "Sculpture", period_id: contemporary.id, artist_id: botero.id, gallery_id: gal3.id)

gal1 = Gallery.create(name: "Dutch painters", floor: 1, theme: "Masters of Dutch 17th century art")
gal2 = Gallery.create(name: "Spanish painters", floor: 3, theme: "Spanish painters from the XX century")
gal3 = Gallery.create(name: "Contemporary sculpture", floor: 1, theme: "Contemporary sculpture from different parts of the world")
