class Api::V1::ListingsController < ApplicationController

    def index 
        @listings = Listing.all 
        render json: ListingSerializer.new(@listings).serializable_hash.to_json, status: 200
    end 

    def show
        @listing = Listing.find(params[:id])
        render json: ListingSerializer.new(@listing).serializable_hash.to_json, status: 200
    end 

    def create 
        @listing = Listing.new(listing_params)
        if @listing.save 
            render json: ListingSerializer.new(@listing).serializable_hash.to_json, status: 200
        else
            render json: {error: "Could not save listing"}
        end 
    end 

    def update
        @listing = Listing.find(params[:id])
        if @listing.update(listing_params)
            render json: ListingSerializer.new(@listing).serializable_hash.to_json, status: 200
        else 
            render json: { error: "Could not update listing"}
        end
    end 
    

    private 

    def listing_params
        params.require(:listing).permit(:title, :description, :type_of, :max_guests, :num_of_beds, :price, :user_id)
    end 
end
