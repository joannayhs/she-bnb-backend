class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.integer :user_id
      t.integer :listing_id
      t.integer :num_of_guests
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
