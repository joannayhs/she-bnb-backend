class ListingsAmenities < ActiveRecord::Migration[6.0]
  def change
    create_table :amenities_listings, id: false do |t|
      t.integer :amenity_id
      t.integer :listing_id

      t.timestamps
    end 
  end
end
