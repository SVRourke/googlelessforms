class AuthController < ApplicationController
    skip_before_action :verify_authenticity_token

    def create
        user = User.find_by(email: request.params[:email])
        if user && user.authenticate(request.params[:password])
            session[:user_id] = user.id
            render json: {
                message: "hello"
            }, status: 200
        else
            flash[:error] = "Invalid Login"
            render json: {message: "error"}, status: 500
        end

        puts request.params
    end

    def destroy
    end
end
