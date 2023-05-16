# class CoursesController < ApplicationController
#   def index
#   end
# end


class CoursesController < ApplicationController
  def index
      @courses = Course.all
  end

  def show
      @course = Course.find(params[:id])
  end

  def new 
      @course = Course.new
  end

  def create
      @course = Course.new(course_params)

      if @course.save 
          redirect_to @course
      else
          render :new, status: :unprocessable_entity

      end
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])

    if @course.update(course_params)
      redirect_to @course
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy

    redirect_to courses_path, status: :see_other
  end


  private
      def course_params
          params.require(:course).permit(:cid, :title, :instructor, :credits, :prereqs, :description)
      end
end
