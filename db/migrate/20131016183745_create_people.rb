class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.date :birthday
      t.string :pet
      t.string :worst_subject
      t.boolean :quidditch_player

      t.timestamps
    end
  end
end
