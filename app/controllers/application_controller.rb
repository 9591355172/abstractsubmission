class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


       def after_sign_in_path_for(resource_or_scope)
        STDOUT.puts "AFTER SIGNIN"
        STDOUT.puts resource.class

        if resource.admin?
            rails_admin_path
        else
           root_path

        end
     end
end
