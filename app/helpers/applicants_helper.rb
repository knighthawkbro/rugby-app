module ApplicantsHelper
    
    def applicant_params
        params.require(:applicant).permit(:name, :email, :school, :year, :experience)
    end
    
end
