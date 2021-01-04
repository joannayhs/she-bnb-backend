class Api::V1::AmenitiesListingsController < ApplicationController 


    def create 
        @listing = Listing.find(params[:listing_id])
        @listing.amenities << Amenity.find_by(name: params[:name])
        render json: ListingSerializer.new(@listing).serializable_hash.to_json, status: 200
    end 

    def destroy
        @listing = Listing.find(params[:listing_id])
        @amenity_listing = @listing.amenities.find_by(name: params[:name])
        if @amenity_listing.destroy
            render json: { data: "Amenity removed successfully"}, status: :ok 
        else 
            render json: { error: "Amenity not found or destroyed"}, status: :unprocessable_entity
        end
    end 

    
end 