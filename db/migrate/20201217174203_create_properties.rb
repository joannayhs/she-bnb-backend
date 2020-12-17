class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.integer :listing_id

      t.timestamps
    end
  end
end
