class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :space, foreign_key: true
      t.string :event_type
      t.string :status
      t.date :date
      t.time :time
      t.integer :duration

      t.timestamps
    end
  end
end
