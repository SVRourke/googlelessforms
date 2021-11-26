class SubmissionsController < ApplicationController
    def index
        submissions = Submission.where(form_id: params[:form_id])
        render json: submissions, :include => :answers    
    end

    def create
        form = Form.find(params[:form_id])
        sub = form.submissions.new(strong_params)

        if sub.save()
            render json: sub, include: :answers 
        else
            render json: sub.errors.full_messages
        end
    end

    private

    def strong_params
        params.require(:submission).permit(answers_attributes: [:name, :value])
    end

end
