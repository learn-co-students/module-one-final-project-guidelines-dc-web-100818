class CreateArtistsTable < ActiveRecord::Migration[5.0]

  def change
    create_table :artists do |t|
      t.string :name
      t.string :culture
      t.string :life_span
    end
  end
  
end
