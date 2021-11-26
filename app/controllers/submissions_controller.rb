class SubmissionsController < ApplicationController
    def index
        submissions = Submission.where(form_id: params[:form_id])
        # render json: submissions, :include => :answers    
        render json: SubmissionSerializer.new(submissions).serializable_hash.to_json
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

    def destroy
        submission = Submission.find(params[:id])
        
        submission.destroy()

        render json: {message: "Removed Submission"}
    end

    private

    def strong_params
        params.require(:submission).permit(answers_attributes: [:name, :value])
    end

end
