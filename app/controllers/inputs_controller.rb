class InputsController < ApplicationController
    def index
        inputs = Input.where(form_id: params[:form_id])
        render json: InputSerializer.new(inputs).to_json
    end
    
    def create
        form = Form.find_by(user_id: params[:user_id], id: params[:form_id])
        input = form.inputs.new(input_params)

        if input.save()
            render json: input
        else
            render json: input.errors.full_messages
        end
    end
    
    def destroy
        input = Input.find_by(form_id: params[:form_id], id: params[:id])
        input.destroy()
        render json: {message: "removed input"}
    end

    private

    def input_params
        params.require(:input).permit(:inputType, :label, :name, :required, :valueOptions_attributes => [:value])
    end

end
