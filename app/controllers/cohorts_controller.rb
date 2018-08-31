class CohortsController < ApplicationController

    before_action :authenticate_user! , only: [:show , :edit, :update, :new , :create]    
    def index
    @all_cohorts = Cohort.all
    end

    def show
        @cohort = Cohort.find(params[:id])

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

    end

    def create
        @cohort = Cohort.new(cohort_params)  
        @cohort.save
        redirect_to '/cohorts'
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

