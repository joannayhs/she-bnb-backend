class Reservation < ApplicationRecord
    belongs_to :user
    belongs_to :listing

    validates :start_date, :end_date, :num_of_guests, presence: true
    validate :start_date_in_the_past, :end_date_after_start_date, :too_many_guests

    def start_date_in_the_past
        if self.start_date < Date.today
            errors.add(:start_date, "Can't be in the past")
        end
    end 

    def end_date_after_start_date
        if self.start_date > self.end_date 
            errors.add(:end_date, "End date cannot be before start date")
        end
    end 

    def too_many_guests
        listing = Listing.find(self.listing_id)
        if self.num_of_guests > listing.max_guests
            errors.add(:num_of_guests, "Too many guests")
        end 
    end 


end
