class Artist < ActiveRecord::Base
  has_many :art_pieces
  has_many :galleries, through: :art_pieces
  has_many :periods, through: :art_pieces

  def works #lists the names of all pieces of art for an artist
    self.art_pieces.map { |piece| piece.name }
  end

  def artwork_locations #lists all pieces of art and the corresponding gallery
    self.art_pieces.collect do |piece|
      puts "#{piece.name} is located at the #{piece.gallery.name} gallery, floor #{piece.gallery.floor}."
    end
  end


end
