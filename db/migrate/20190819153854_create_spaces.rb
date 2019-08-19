class CreateSpaces < ActiveRecord::Migration[5.2]
  def change
    create_table :spaces do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.string :address
      t.string :city
      t.integer :zipcode
      t.text :equipment
      t.text :event_type
      t.string :place_type
      t.integer :capacity
      t.text :description
      t.string :photo
      t.text :policy

      t.timestamps
    end
  end
end
