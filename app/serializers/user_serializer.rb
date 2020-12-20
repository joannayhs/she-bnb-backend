class UserSerializer
  include JSONAPI::Serializer
  attributes :email, :first_name, :last_name
  attribute :reservations do |user|
    user.reservations.each do |reservation|
      {
        start_date: reservation.start_date,
        end_date: reservation.end_date
      }
    end
  end 
  has_many :reviews
  has_many :listings
end
