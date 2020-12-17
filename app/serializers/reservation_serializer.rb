class ReservationSerializer
  include JSONAPI::Serializer
  attributes :start_date, :end_date
end
