class InstructorsController < ApplicationController
    def index
        @all_instructors = Instructor.all.order(:fname)
    end
    
    def show
        @instructor = Instructor.find(params[:id])

    end

    def edit
        @instructor = Instructor.find(params[:id])
    end

    def update
        @instructor = Instructor.find(params[:id])
        @instructor.update(instructor_params)

        redirect_to '/instructors'
    end
    def new
        @instructor = Instructor.new

    end

    def create
        @instructor = Instructor.new(instructor_params)  
        @instructor.save
        redirect_to @instructor
    end

    private 
     def instructor_params
        params.require(:instructor).permit(
            :fname, 
            :lname, 
            :email,
            :password, 
            :age, 
            :salary,
            :highest_edu, 
            :cohort_id, 
            :is_admin
            )
    end
end
