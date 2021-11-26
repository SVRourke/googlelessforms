class FormsController < ApplicationController
    def index
        user = User.find(params[:user_id])
        forms = user.forms

        # render json: forms
        render json: FormSerializer.new(forms).serializable_hash.to_json
    end
    
    def show
        form = Form.find_by(user_id: params[:user_id], id: params[:id])
        
        if form
            render json: ShowFormSerializer.new(form).serializable_hash.to_json
        else
            render json: {error: "form not found"}
        end
        # get submissions
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
        form = Form.find_by(user_id: params[:user_id], id: params[:id])
        form.destroy()
        render json: {message: "Form removed"}
    end

    private

    def form_params
        params.require(:form).permit(:title)
    end
end
