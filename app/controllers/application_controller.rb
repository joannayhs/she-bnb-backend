class ApplicationController < ActionController::API
 include ::ActionController::Cookies

    def current_user 
        User.find(params[:session_id])
    end 

    def logged_in? 
        !!current_user
    end 
end
