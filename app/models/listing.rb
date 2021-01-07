class Listing < ApplicationRecord
    belongs_to :user
    before_destroy { amenities.clear }
    
    validates :title, presence: true, uniqueness: true
    validates :description, :type_of, :max_guests, :num_of_beds, :price, presence: true
    validates :max_guests, :num_of_beds, :price, greater_than_or_equal_to: 1
    has_many :reservations
    has_one :property, dependent: :destroy
    has_and_belongs_to_many :amenities
    has_many :reviews
    has_many :images, dependent: :destroy
end
