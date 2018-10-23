class Gallery < ActiveRecord::Base
  has_many :art_pieces
  has_many :artists, through: :art_pieces
  has_many :periods, through: :art_pieces

  def self.search_by_floor(arg)
    galleries = self.all.select {|gal| gal.floor == arg}
    rooms = galleries.collect {|el| el.theme}.join(", ")
    puts "Floor #{arg}: #{rooms}"
  end


end
