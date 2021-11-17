class UsersController < ApplicationController
    def new
        @user = User.new()
    end

    def create
        # try to create user
        user = User.create(username: params[:username], email: params[:email], password: params[:password])

        if user.save()
            session[:user_id] = user.id
            redirect_to :user_forms
        else
            flash[:error] = user.errors.full_messages
            redirect_back(fallback_location: new_user_path)
        end
    end
end
