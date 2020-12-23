class Api::V1::AmenitiesController < ApplicationController

    def index 
        @amenities = Amenity.all
        render json: AmenitiesSerializer.new(@amenities).serializable_hash.to_json
    end 
end
