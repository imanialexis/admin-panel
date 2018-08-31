class HomepageController < ApplicationController
  def home
    if current_user 
      redirect_to '/homepage/dashboard'
    end
  end



  def dashboard
  end
end
