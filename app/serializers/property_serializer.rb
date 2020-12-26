class PropertySerializer
  include JSONAPI::Serializer
  attributes :street, :city, :state, :zip
end
