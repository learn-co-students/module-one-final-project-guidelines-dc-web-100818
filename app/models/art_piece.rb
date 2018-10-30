class ArtPiece < ActiveRecord::Base
  belongs_to :artist
  belongs_to :gallery
  belongs_to :period

  #lists all artwork names
  def self.list_all
    x = 0
    self.all.collect{|i| "#{x += 1}. #{i.name} by #{i.artist.name}"}
  end

  # returns names of artworks with the input classification
  def self.search_by_classification(input)
    piece_list = self.all.select {|piece| piece.classification.downcase == input.downcase}
    piece_list.collect {|piece| "#{piece.name} by #{piece.artist.name}"}
  end

  # returns names of artworks belonging to input culture and classification
  def self.search_by_class_culture(class_input, culture_input)
    piece_list = self.all.select {|piece| piece.classification.downcase == class_input.downcase && piece.artist.culture.downcase == culture_input.downcase}
    piece_list.collect {|piece| "#{piece.name} by #{piece.artist.name}"}
  end

  # returns names of artworks and artists belonging to input culture
  def self.search_by_culture(input)
    arr = self.all.select {|piece| piece.artist.culture.downcase == input.downcase}
    arr.collect {|piece| "#{piece.name} by #{piece.artist.name}"}
  end

end
