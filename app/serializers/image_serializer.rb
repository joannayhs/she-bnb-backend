class ImageSerializer
  include JSONAPI::Serializer
  attributes :description, :url
end
