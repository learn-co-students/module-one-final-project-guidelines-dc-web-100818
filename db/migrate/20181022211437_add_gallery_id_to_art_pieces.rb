class AddGalleryIdToArtPieces < ActiveRecord::Migration[5.0]

  def change
    add_column :art_pieces, :gallery_id, :integer
  end

end
