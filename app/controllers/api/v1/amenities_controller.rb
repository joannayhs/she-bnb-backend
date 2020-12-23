class Api::V1::AmenitiesController < ApplicationController

    def index 
        @amenities = Amenities.all
        render json: AmenitiesSerializer.new(@amenities).seralizable_hash.to_json
    end 
end
