class ListingSerializer
  include JSONAPI::Serializer
  attributes :user_id, :title, :description, :type_of, :max_guests, :num_of_beds, :price
  attribute :images do |listing| 
    listing.images.each do |image|
      {
        description: image.description,
        url: image.url
      }
    end
  end
    
  attribute :property do |listing|
    {
      street: listing.property.street, 
      city: listing.property.city, 
      state: listing.property.state, 
      zip: listing.property.zip
    }
  end

  attribute :amenities do |listing|
    {
      name: listing.amenities.name
    }
  end 
  has_many :reviews
  has_many :reservations
end
