class ApplicationController < ActionController::Base

    before_action :authenticate_user! , only: [:index]

    layout :layout_by_resource

    private 

    def layout_by_resource
        if devise_controller?
            'signin'
        else
            'application'
        end
    end

end
