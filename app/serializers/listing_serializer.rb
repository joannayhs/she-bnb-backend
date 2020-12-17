class ListingSerializer
  include JSONAPI::Serializer
  attributes :title, :description, :type_of, :max_guests, :num_of_beds, :price
  attribute :images do |image|
    {
      description: image.description,
      url: image.url
    }
  end 
  attribute :property do |property|
    {
      street: property.street, 
      city: property.city, 
      state: property.state, 
      zip: property.zip
    }
  end
  has_many :reviews
  has_many :reservations
end
