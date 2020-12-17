class Listing < ApplicationRecord
    belongs_to :user
    has_many :reservations
    has_one :property, dependent: :destroy
    has_many :amenities
    has_many :reviews
    has_many :images, dependent: :destroy
end
