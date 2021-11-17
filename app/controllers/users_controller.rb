class UsersController < ApplicationController
    def new
        @user = User.new()
        # render the page
    end

    def create
        user = User.create(username: params[:username], email: params[:email], password: params[:password])

        if user.save()
            render json: {message: "user created"}
            # redirect to user>form>index
        else
            flash[:error] = user.errors.full_messages
            redirect_back(fallback_location: new_user_path)
        end
        # try to create user
        # if good assign session id and redirect to forms index
        # if bad redirect back with flash for error
    end
end
