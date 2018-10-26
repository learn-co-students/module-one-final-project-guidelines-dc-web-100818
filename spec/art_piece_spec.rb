require_relative "../config/environment.rb"
require_relative "../app/models/art_piece.rb"

describe "ArtPiece" do

  describe ".new" do
    it "initiates with a name, classification, period id and artist id" do
      expect(ArtPiece).to respond_to(:new).with(4).argument
    end
  end
end
