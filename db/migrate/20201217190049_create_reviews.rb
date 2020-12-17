class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :content
      t.integer :stars
      t.integer :user_id
      t.integer :listing_id

      t.timestamps
    end
  end
end
