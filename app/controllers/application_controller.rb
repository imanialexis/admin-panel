class ApplicationController < ActionController::Base

    before_action :authenticate_user! , only: [:index]

    layout :layout_by_resource


    def after_sign_in_path_for(resource)
     
       dashboard_path
    
    end

    private 

    def layout_by_resource
        if devise_controller?
            'signin'
        else
            'application'
        end
    end

end
