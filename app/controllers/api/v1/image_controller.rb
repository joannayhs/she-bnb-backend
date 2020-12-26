class ImageController < ApplicationController

    def create 
        @image = Image.new(image_params)
        if image.save
            render json: ImageSerializer.new(@image).serializable_hash.to_json, status: 200
        else 
            render json: {error: "Could not add image"}
        end 
    end 

    private 

    def image_params
        params.require(:image).permit(:description, :url)
    end 
end
