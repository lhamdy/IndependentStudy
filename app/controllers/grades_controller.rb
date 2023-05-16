# class GradesController < ApplicationController
# end

class GradesController < ApplicationController
    def index  
        @grades = Grade.all
    end

    def show
        puts params[:sid]
        @student = Grade.find_by(sid: params[:sid])
        @grades_ = Grade.where(sid: params[:sid])
        # if @student.nil?
        # # Handle the case where the student with the given sid is not found
        #     redirect_to grades_path, notice: "Student not found"
        # else
        #     @courses = Grade.where(sid: params[:sid])
        # end
    end

    def new 
        @grade = Grade.new
    end

    def create
        @grade = Grade.new(grade_params)

    
        if @grade.save 
            redirect_to action: :show, sid: @grade.sid
            
        else
            render :new, status: :unprocessable_entity

        end
    end

    private
        def grade_params
            params.require(:grade).permit(:sid, :cid, :grade, :term)
        end
end


