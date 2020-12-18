class Api::V1::SessionController < ApplicationController

    def create 
        
        @user = User.find_by(email: params[:session][:email])

        if @user && @user.authenticate(params[:session][:password])
            session[:user_id] = @user.id
            render json: UserSerializer.new(@user).serializable_hash.to_json
        else  
            render json: {
                error: "Invalid Credentials"
            }
        end 
    end 

    def get_current_user
        if logged_in?
            render json: UserSerializer.new(current_user).serializable_hash.to_json
        else 
            render json: {
                error: "No one logged in"
            }
        end 
    end 

    def destroy
        session.clear
        render json: {
            notice: "Successfully logged out"
        }
    end 
end
