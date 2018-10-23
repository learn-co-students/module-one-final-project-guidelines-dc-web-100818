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
  end

  #return the name of the most common culture among artists
  def self.most_common_culture
    artist = Artist.all.max_by {|artist| artist.culture}
    artist.culture
  end

end
