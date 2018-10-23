class Artist < ActiveRecord::Base
  has_many :art_pieces
  has_many :galleries, through: :art_pieces
  has_many :periods, through: :art_pieces

  
end
