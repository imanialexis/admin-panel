class HomepageController < ApplicationController

layout 'application' 
  def home
 
  end

  def dashboard

    @courses = Course.all
    @instructors = Instructor.all
    @students = Student.all

  end

end
