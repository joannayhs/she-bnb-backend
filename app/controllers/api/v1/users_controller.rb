class Api::V1::UsersController < ApplicationController

    def show 
        @user = User.find(params[:id])
        render json: UserSerializer.new(@user).serializable_hash.to_json, status: 200
    end 
    
end
