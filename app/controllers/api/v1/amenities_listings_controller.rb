class Api::V1::AmenitiesListingsController < ApplicationController 


    def create 
        @listing = Listing.find(params[:listing_id])
        @listing.amenities << Amenity.find_by(name: params[:name])
        render json: ListingSerializer.new(@listing).serializable_hash.to_json, status: 200
    end 

    
end 