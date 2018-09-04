class CoursesController < ApplicationController

    before_action :authenticate_user! , only: [:show , :edit, :update, :new , :create]
    
    def index
        @all_courses = Course.all.order(:name)
    end

    def show
        @course = Course.find(params[:id])

    end

    def edit
        @course = Course.find(params[:id])
    end
    
    def update
        @course = Course.find(params[:id])
        @course.update(course_params)

        redirect_to '/courses'
    end

    def new
        @course = Course.new

    end

    def create
        @course = Course.new(course_params)  
        @course.save
        redirect_to '/courses'
    end

   

    def destroy
        @course = Course.find(params[:id])
        @course.destroy 
    end

    private 
     def course_params
        params.require(:course).permit(:name, :description, :total_class_hours)
    end
end
