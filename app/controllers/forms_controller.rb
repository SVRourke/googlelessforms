class FormsController < ApplicationController
    def index
        @user = current_user
        @forms = @user.forms
    end
    
    def show
        @form = Form.find(params[:id])
        # get submissions
        # render form page
    end
    
    def new
        # render new form page
    end
    
    def create
        render json: {message: "CREATE"}
        # get body
        # generate form and inputs for body
        # redirect to form show for new form
    end
    
    def destroy
        render json: {message: "Destroy"}
        # get form
        # detroy form
    end
end
