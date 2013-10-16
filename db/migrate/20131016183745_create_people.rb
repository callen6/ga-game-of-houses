class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.date :birthday
      t.string :pet
      t.string :worst_subject
      t.boolean :quidditch_player
      t.belongs_to :house #t.references :house is alt

      t.timestamps
    end
  # this makes reading house_id columns much faster
  # don't do this on everything b/c there's a slight speed penalty 
  # for writing contend
  add_index :people, :house_id
  end
end
