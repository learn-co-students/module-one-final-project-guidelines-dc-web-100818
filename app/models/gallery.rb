class Gallery < ActiveRecord::Base
  has_many :art_pieces
  has_many :artists, through: :art_pieces
  has_many :periods, through: :art_pieces

  # returns rooms for given floor
  def self.search_galleries_by_floor(arg)
    galleries = self.all.select {|gal| gal.floor == arg}
    rooms = galleries.collect {|el| el.theme}.join(", ")
    puts "Floor #{arg}: #{rooms}."
  end

  #returns artwork for given floor
  def self.search_artwork_by_floor(arg)
    works = ArtPiece.all.select {|ap| ap.gallery.floor == arg}
    artworks = works.collect {|el| el.name}.join(", ")
    puts "Floor #{arg}: #{artworks}."
  end

  #returns artists for given floor
  def self.search_artists_by_floor(arg)
    works = ArtPiece.all.select {|ap| ap.gallery.floor == arg}
    artists = works.collect {|el| el.artist.name}.join(", ")
    puts "Floor #{arg}: #{artists}."
  end

end
