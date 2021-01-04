class Api::V1::ImagesController < ApplicationController

    def create 
        @image = Image.new(image_params)
        if @image.save
            render json: ImageSerializer.new(@image).serializable_hash.to_json, status: 200
        else 
            render json: {error: "Could not add image"}
        end 
    end 

    def update 
        @image = Image.find(params[:id])
        if @image.update(image_params)
            render json: ImageSerializer.new(@image).serializable_hash.to_json, status: :ok
        else 
            render json: { error: "Could not update image"}
        end 
    end 

    private 

    def image_params
        params.require(:image).permit(:description, :url, :listing_id)
    end 
end
