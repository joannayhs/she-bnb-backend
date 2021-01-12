class ReservationSerializer
  include JSONAPI::Serializer
  attributes :start_date, :end_date, :user_id, :listing_id
end
