class Api::V1::ImagesController < ApplicationController

    def create 
        @image = Image.new(image_params)
        if @image.save
            render json: ImageSerializer.new(@image).serializable_hash.to_json, status: 200
        else 
            render json: {error: @image.errors.full_messages.to_sentences}, status: :unprocessable_entity
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

    def destroy 
        @image = Image.find(params[:id])
        if @image.destroy 
            render json: {message: "Image successfully deleted"}, status: :ok 
        else 
            render json: {error: "Image could not be found"}, status: :unprocessable_entity
        end 
    end 

    private 

    def image_params
        params.require(:image).permit(:description, :url, :listing_id)
    end 
end
