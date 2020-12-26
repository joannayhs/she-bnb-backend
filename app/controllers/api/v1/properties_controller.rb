class Api::V1::PropertiesController < ApplicationController

    def create
        @property = Property.new(property_params)
        if @property.save 
            render json: PropertySerializer.new(@property).serializable_hash.to_json, status: 200
        else 
            renderjson: {error: "Could not save property"}
        end 
    end 

    private 

    def property_params 
        params.require(:property).permit(:street, :city, :state, :zip)
    end 
end
