class GradesController < ApplicationController
    def index  
        @grades = Grade.all
    end

    def show
        puts params[:sid]
        @student = Grade.find_by(sid: params[:sid])
        @grades_ = Grade.where(sid: params[:sid])
       
    end

    def new 
        @grade = Grade.new
    end

    def create
        @grade = Grade.new(grade_params)

        Grade.transaction do
            puts "Transaction started"
            if @grade.save 
              puts "Grade saved"
              redirect_to grade_path(@grade.sid)
            else
              puts "Grade save failed"
              puts @grade.errors.full_messages
              render :new, status: :unprocessable_entity
            end
        end

    end

    def show_checkboxes
        @student = Grade.find_by(sid: params[:sid])
        @grades_ = Grade.where(sid: params[:sid])
        @show_checkboxes = true
        render :show
    end

    def edit
        @grade = Grade.find(params[:id])
    end

    def update
        @grade = Grade.find(params[:id])
    
        if @grade.update(grade_params)
            redirect_to grade_path(@grade.sid)
        else
          render :edit, status: :unprocessable_entity
        end
    end

    def destroy
        selected_grade_ids = params[:grade_ids]
        Grade.where(id: selected_grade_ids).destroy_all
      
        redirect_to grade_path(sid: params[:sid]), notice: "Grades successfully deleted"
    end
      

    private
        def grade_params
            params.require(:grade).permit(:sid, :cid, :grade, :term)
        end
end


