class User < ApplicationRecord
    has_secure_password

    has_many :listings
    has_many :reservations
end
