class Api::V1::UsersController < ApplicationController

    def show 
        @user = User.find(params[:id])
        render json: UserSerializer.new(@user).serializable_hash.to_json, status: 200
    end 

    def create
        @user = User.new(user_params)
        if @user.save 
            render json: UserSerializer.new(@user).serializable_hash.to_json, status: 200
            session[:user_id] = @user.id 
        else 
            alert("An error occured")
        end
    end 

    private 

    def user_params
        params.require(:user).permit(:email, :first_name, :last_name, :password)
    end 

end
