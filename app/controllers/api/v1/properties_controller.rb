class Api::V1::PropertiesController < ApplicationController

    def create
        @property = Property.new(property_params)
        if @property.save 
            render json: PropertySerializer.new(@property).serializable_hash.to_json, status: 200
        else 
            render json: {error: "Could not save property"}, status: :unprocessable_entity
        end 
    end 

    def show 
        @property = Property.find(params[:id])
        if @property
            render json: PropertySerializer.new(@property).serializable_hash.to_json, status: 200
        else 
            render json: {error: "Could not find property"}, status: :unprocessable_entity
        end 
    end 

    def update 
        @property = Property.find(params[:id])
        if @property.update(property_params)
            render json: PropertySerializer.new(@proeprty).serializable_hash.to_json, status: :ok
        else 
            render json: {error: "Unable to update property"}
        end 
    end 
    
    private 

    def property_params 
        params.require(:property).permit(:street, :city, :state, :zip, :listing_id)
    end 
end
