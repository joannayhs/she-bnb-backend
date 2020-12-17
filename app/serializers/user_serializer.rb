class UserSerializer
  include JSONAPI::Serializer
  attributes :email, :first_name, :last_name
  has_many :reviews
  has_many :listings
  has_many :reservations
end
