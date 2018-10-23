class Artist < ActiveRecord::Base
  has_many :art_pieces
  has_many :galleries, through: :art_pieces
  has_many :periods, through: :art_pieces

  #lists the names of all pieces of art for an artist
  def works
    self.art_pieces.map { |piece| piece.name }
  end

  #lists all pieces of art and the corresponding gallery
  def artwork_locations
    self.art_pieces.collect do |piece|
      puts "#{piece.name} is located at the #{piece.gallery.name} gallery, floor #{piece.gallery.floor}."
    end
    nil
  end

  #return the name of the most common culture among artists
  def self.most_common_culture
    artist = Artist.all.max_by {|artist| artist.culture}
    artist.culture
  end

  #returns name(s) of artist(s) with the most artworks
  def self.most_represented
    work = Artist.all.collect {|el| el.art_pieces} # -> array of arrays of artwork instances (each array element contains artworks of one artist)
    max = work.max_by {|arr| arr.count} # -> arr with artwork instance
    artist = max[0].artist # -> artist instance with the biggest numbers of works
    count = artist.art_pieces.length # -> count = the max number of artworks per artist
    max_artists = Artist.all.select {|artist| artist.art_pieces.length == count} # -> instances of artists with the same number of artworks
    max_artists.collect {|el| el.name} # -> puts names of those artists
  end

  

end
