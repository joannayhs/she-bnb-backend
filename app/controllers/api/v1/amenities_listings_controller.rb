class Api::V1::AmenitiesListingsController < ApplicationController 


    def create 
        @listing = Listing.find(params[:listing_id])
        if @listing.amenities << Amenity.find_by(name: params[:name])
            render json: ListingSerializer.new(@listing).serializable_hash.to_json, status: 200
        else
            render json: {error: "Unable to add amenity to listing"}
        end
    end 

    def destroy
        @listing = Listing.find(params[:listing_id])
        @amenity_listing = @listing.amenities.find_by(name: params[:name])
        if @listing.amenities.delete(@amenity_listing)
            render json: { data: "Amenity removed successfully"}, status: :ok 
        else 
            render json: { error: "Amenity not found or destroyed"}, status: :unprocessable_entity
        end
    end 

    
end 