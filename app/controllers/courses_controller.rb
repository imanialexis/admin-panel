class CoursesController < ApplicationController
    def index
        @all_courses = Course.all
    end

    def show
        @course = Course.find(params[:id])

    end

    def new
        @course = Course.new

    end

    def edit
    end

    def create
        @course = Course.new(course_params)  
        @course.save
        redirect_to @course
    end

    private 
     def course_params
        params.require(:course).permit(:name, :description, :total_class_hours)
    end
end
