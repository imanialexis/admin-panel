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
        puts " I'M IN THE UPDATE METHOD"
        puts " I'M IN THE UPDATE METHOD"
        puts " I'M IN THE UPDATE METHOD"

        redirect_to '/cohorts'
    end

    def new
        @cohort = Cohort.new
        @courses = Course.all
        @instructors = Instructor.all

        @courses_info = []
            @courses.each do |course|
                @courses_info.push(course.name + "ID:" + course.id.to_s )
            end

        @instructors_info = []
            @instructors.each do |instructor|
                @instructors_info.push(instructor.fname + ' '+ instructor.lname + " - ID:" + instructor.id.to_s )
            end
       

    end

    def create
        @cohort = Cohort.new(cohort_params)  
        @cohort.save
        puts " I'M IN THE CREATE METHOD"
        puts " I'M IN THE CREATE METHOD"
        puts " I'M IN THE CREATE METHOD"

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

