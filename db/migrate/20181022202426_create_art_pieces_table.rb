class CreateArtPiecesTable < ActiveRecord::Migration[5.0]

  def change
    create_table :art_pieces do |t|
      t.string :name
      t.string :classification
      t.integer :period_id
      t.integer :artist_id
    end
  end

end
