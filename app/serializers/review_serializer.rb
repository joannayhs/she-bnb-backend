class ReviewSerializer
  include JSONAPI::Serializer
  attributes :content, :stars
end
