class ArtPiece < ActiveRecord::Base
  belongs_to :artist
  belongs_to :gallery
  belongs_to :period


  def self.search_by_classification(input)
    piece_list = self.all.select {|piece| piece.classification.downcase == input.downcase}
    piece_list.collect {|piece| piece.name}
  end

end
