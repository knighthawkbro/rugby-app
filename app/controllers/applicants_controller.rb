class ApplicantsController < ApplicationController
    include ApplicantsHelper

    def new
        @applicant = Applicant.new
    end
    
    def create
        @applicant = Applicant.new(applicant_params)
        if @applicant.save
            flash.notice = "Thanks #{@applicant.name.titleize}, you made the greatest decision of your life!"
            redirect_to root_path
        else
            render 'new'
        end
    end
    
    def index
        @applicants = Applicant.all
    end
    
    def show
        @applicant = Applicant.find(params[:id])
    end
    
end
