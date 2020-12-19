class User < ApplicationRecord
    has_secure_password
    has_many :listings
    has_many :reservations
    has_many :reviews

    EMAIL_REGEX = /[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}/i
    validates :first_name, presence: true 
    validates :last_name, presence: true
    validates :email, presence:true, uniqueness: true, format: EMAIL_REGEX
    validates :password, presence: true, length: {in: 6..20}, :if => :password
end
