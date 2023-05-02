class FallCoursesController < ApplicationController
    def index
        @fall_courses = FallCourse.all
    end

    def show
        @fall_course = FallCourse.find(params[:id])
    end

    def new 
        @fall_course = FallCourse.new
    end

    def create
        @fall_course = FallCourse.new(fall_course_params)

        if @fall_course.save 
            redirect_to @fall_course
        else
            render :new, status: :unprocessable_entity

        end
    end

    private
        def fall_course_params
            params.require(:fall_course).permit(:cid, :title, :instructor, :credits, :prereqs, :description)
        end
end
