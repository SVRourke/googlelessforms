class FormsController < ApplicationController
    def index
        user = User.find(params[:user_id])
        forms = user.forms

        render json: forms
    end
    
    def show
        user = User.find(params[:user_id])
        form = user.forms.find(params[:id])

        if form
            render json: form
        else
            render json: {error: "form not found"}
        end
        # get submissions
        # render form page
    end
        
    def create
        # separate action for adding inputs,
        # front end will add and remove inputs through input controller

        user = User.find(params[:user_id])
        form = user.forms.new(form_params)
        
        if form.save()
            render json: form
        else
            render json: form.errors.full_messages
        end
    end
    
    def destroy
        render json: {message: "Destroy"}
        # get form
        # detroy form
    end

    private

    def form_params
        params.require(:form).permit(:title)
    end
end
