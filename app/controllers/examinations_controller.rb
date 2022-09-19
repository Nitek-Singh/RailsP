class ExaminationsController < ApplicationController
   

    def index
        @examinations = Examination.all
    end

    def new
        @examination = Examination.new
    end

    def create
        @examination = Examination.new(examination_params)
        if @examination.save
            redirect_to examinations_path
        else
            render :new
        end
    end

    private

    def examination_params
        params.require(:examination).permit(:full_name, :email, :department, :college_name, :mobile_number)
    end

   

end