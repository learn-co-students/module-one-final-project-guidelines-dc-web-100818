require 'pry'

class Artist < ActiveRecord::Base
  has_many :art_pieces
  has_many :galleries, through: :art_pieces
  has_many :periods, through: :art_pieces

  #lists the names of all pieces of art for an artist
  def works
    self.art_pieces.map { |piece| piece.name }
  end

  def self.list_artists
    x = 0
    self.all.collect {|i| "#{x += 1}. #{i.name}"}
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
    work = Artist.all.collect {|el| el.art_pieces}
    max = work.max_by {|arr| arr.count}
    artist = max[0].artist
    count = artist.art_pieces.length
    max_artists = Artist.all.select {|artist| artist.art_pieces.length == count}
    max_artists.collect {|el| el.name}
  end

  #returns names of artists belonging to the given culture
  def self.search_by_culture(arg)
    x = Artist.all.select {|artist| artist.culture.downcase == arg.downcase}
    x.collect {|el| el.name}
  end

end
