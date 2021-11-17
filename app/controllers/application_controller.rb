class ApplicationController < ActionController::Base

    def current_user
        if logged_in?
            @user ||= User.find(session[:user_id]) 
        end
    end

    def logged_in?
        !!session[:user_id]
    end
end
