class CohortsController < ApplicationController

    before_action :authenticate_user! , only: [:show , :edit, :update, :new , :create]    
    
    def index
        @all_cohorts = Cohort.all
    end

    def show
        @cohort = Cohort.find(params[:id])
        @students = Student.where(cohort_id: @cohort.id)


    end

    def edit
        @cohort = Cohort.find(params[:id])
    end

    def update
        @cohort = Cohort.find(params[:id])
        @cohort.update(cohort_params)

        redirect_to '/cohorts'
    end

    def new
        @cohort = Cohort.new
        @instructors = Instructor.all
        @courses = Course.all

        @instructors_info = []
            @instructors.each do |instructor|
                @instructors_info.push(instructor.fname + ' '+ instructor.lname + " - ID:" + instructor.id.to_s )
            end

        @courses_info = []
        @courses.each do |course|
            @courses_info.push(course.name + " - ID:" + course.id.to_s )
        end

    end

    def create
        @cohort = Cohort.new(cohort_params)  
        @cohort.save
        redirect_to '/cohorts'
    end


    def destroy
        @cohort = Cohort.find(params[:id])
        @cohort.destroy 

    end

    private 
    def cohort_params
        params.require(:cohort).permit(
            :name, 
            :start_date, 
            :end_date,
            :course_id,
            :instructor_id
            )
    end


end

