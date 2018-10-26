class CreateGalleriesTable < ActiveRecord::Migration[5.0]

  def change
    create_table :galleries do |t|
      t.string :name
      t.integer :floor
      t.string :theme
    end
  end

end
