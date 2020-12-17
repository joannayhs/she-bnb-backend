class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.string :title
      t.string :description
      t.string :type
      t.integer :max_guests
      t.integer :num_of_beds
      t.decimal :price

      t.timestamps
    end
  end
end
