class CreatePeriodsTable < ActiveRecord::Migration[5.0]

  def change
    create_table :periods do |t|
      t.string :name
    end
  end

end
