require_relative "../config/environment.rb"
require_relative "../app/models/gallery.rb"

describe 'Gallery' do

  describe '.new' do
    it 'initiates with a name, floor and theme' do
      expect(Gallery).to respond_to(:new).with(3).argument
    end
  end

  describe '.search_galleries_by_floor' do
    it 'returns an array of all galleries for the given floor' do
      expect(Gallery.search_galleries_by_floor(1)).to be_a(Array)
    end
  end

  describe '.search_artists_by_floor' do
    it 'returns an array of all artists for the given floor' do
      expect(Gallery.search_artists_by_floor(1)).to be_a(Array)
    end
  end

  describe '.search_artwork_by_floor' do
    it 'returns an array of artwork for the given floor' do
      expect(Gallery.search_artwork_by_floor(1)).to be_a(Array)
    end
  end

end
