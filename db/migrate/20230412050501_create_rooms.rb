class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string :name
      t.text :address
      t.integer :price
      t.text :description
      t.string :image
      t.datetime :start_at
      t.datetime :end_at
      t.integer :user_id

      t.timestamps
    end
  end
end
