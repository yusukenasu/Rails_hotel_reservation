class ApplicationController < ActionController::Base
  
    #before_action :configure_permitted_parameters , if: :devise_controller?

   # private
   # def configure_permitted_parameters
    #    devise_parameter_sanitizer.permit(:account_update, keys: [:email])
   # end

    def after_sign_in_path_for(resource)
        rooms_index_path
    end
    
end
