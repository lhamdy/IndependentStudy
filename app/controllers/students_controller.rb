class StudentsController < ApplicationController
    def index  
        @students = Student.all
    end

    def show
        @student = Student.find_by(sid: params[:sid])
        @courses = Student.where(sid: params[:sid])
    end

    def new 
        @student = Student.new
    end

    def create
        @student = Student.new(student_params)

        if @student.save 
            redirect_to @student
        else
            render :new, status: :unprocessable_entity

        end
    end

    private
        def student_params
            params.require(:student).permit(:sid, :cid, :grade, :title, :term)
        end
end


