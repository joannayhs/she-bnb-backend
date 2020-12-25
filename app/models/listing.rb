class Listing < ApplicationRecord
    belongs_to :user

    validates :title, presence: true, uniqueness: true
    validates :description, :type_of, :max_guests, :num_of_beds, :price, presence: true

    has_many :reservations
    has_one :property, dependent: :destroy
    has_and_belongs_to_many :amenities
    has_many :reviews
    has_many :images, dependent: :destroy
end
