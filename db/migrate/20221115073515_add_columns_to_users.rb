class AddColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :gender, :string
    add_column :users, :tribe, :string
    change_column :dragons, :armour, 'integer USING CAST(armour AS integer)'
    change_column :dragons, :fire_power, 'integer USING CAST(fire_power AS integer)'
  end
end
