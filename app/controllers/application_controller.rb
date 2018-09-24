class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?


       def after_sign_in_path_for(resource_or_scope)
        STDOUT.puts "AFTER SIGNIN"
        STDOUT.puts resource.class

        if resource.admin?
            rails_admin_path
        else
           root_path

        end
     end
  

  protected
    def configure_permitted_parameters
       devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :mobile_number, :organization, :designation, :webiste_url, :promotion])
    end

end
