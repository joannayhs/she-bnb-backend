class ReservationSerializer
  include JSONAPI::Serializer
  attributes :start_date, :end_date, :num_of_guests, :user_id, :listing_id
end
