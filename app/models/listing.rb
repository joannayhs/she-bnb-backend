class Listing < ApplicationRecord
    belongs_to :user
    has_many :reservations
    has_one :property, dependent: :destroy
end
