class Gallery < ActiveRecord::Base
  has_many :art_pieces
  has_many :artists, through: :art_pieces
  has_many :periods, through: :art_pieces
end
