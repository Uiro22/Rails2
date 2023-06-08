class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.integer :user_id
      t.integer :room_id
      t.text:description
      t.datetime :start_at
      t.datetime :end_at
      t.integer :price
      t.integer :people
      t.string:image
      t.string:name

      t.timestamps
    end
  end
end
