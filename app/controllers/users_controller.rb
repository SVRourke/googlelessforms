class UsersController < ApplicationController
    def create
        # try to create user
        user = User.new(strong_params)

        if user.save()
            render json: user
        else
            render json: {error: user.errors.full_messages}
        end
    end

    private

    def strong_params
        params.require(:user).permit(:username, :email, :password)
    end
end
