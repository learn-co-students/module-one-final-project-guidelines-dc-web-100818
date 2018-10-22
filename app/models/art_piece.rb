class ArtPiece < ActiveRecord::Base
  belongs_to :artist
  belongs_to :gallery
  belongs_to :period
end
