class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.string :name
      t.string :colors
      t.integer :points, default: 0
      t.string :location, default: 'Hogwarts Castle'
      t.string :slogan

      t.timestamps
    end
  end
end
