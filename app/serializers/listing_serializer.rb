class ListingSerializer
  include JSONAPI::Serializer
  attributes :user_id, :title, :description, :type_of, :max_guests, :num_of_beds, :price, :amenities, :property
  attribute :images do |listing| 
    listing.images.each do |image|
      {
        description: image.description,
        url: image.url
      }
    end
  end 
  has_many :reviews
  has_many :reservations
  
end
