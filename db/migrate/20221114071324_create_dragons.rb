class CreateDragons < ActiveRecord::Migration[7.0]
  def change
    create_table :dragons do |t|
      t.string :name
      t.string :species
      t.integer :rating
      t.integer :speed
      t.string :fire_power
      t.string :armour
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
