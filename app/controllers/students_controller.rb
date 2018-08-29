class StudentsController < ApplicationController
    def index
        @all_students = Student.all.order(:fname)
     
    end


    def show
        @student = Student.find(params[:id])

    end

    def edit
        @student = Student.find(params[:id])
    end
    
    def update
        @student = Student.find(params[:id])
        @student.update(student_params)

        redirect_to '/students'
    end


    def new
        @student = Student.new

    end

    def create
        p "i am in create"
        @student = Student.new(student_params)  
        @student.save
        
        redirect_to '/students'
    end

    def destroy
        @student = Student.find(params[:id])
        @student.destroy 

    end

    private 
    def student_params
        params.require(:student).permit(:fname, :lname, :email, :password, :age, :cohort_id, :is_admin)
    end

end
