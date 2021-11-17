class FormsController < ApplicationController
    def index
        # get user id
        # get forms for that user
        # render form index
    end

    def show
        # get form id
        # get form
        # get submissions
        # render form page
    end

    def new
        # render new form page
    end

    def create
        # get body
        # generate form and inputs for body
        # redirect to form show for new form
    end

    def destroy
        # get form
        # detroy form
    end
end
