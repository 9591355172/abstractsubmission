class HomeController < ApplicationController

before_action :check_if_admin, only: [:admin_signin]

	def index
	end
	
	def abstract
		@abstract_submit = Abstract.new
	end

	def about
	end
	
	def fees	
	end

	def cochair
	end

	def dates
	end

	def eac
	end
	
	def tracks
	end

	def comingsoon
	end

	def spjimr
	end

	def details
	end

	def docapp
	end

	def forum
	end

	def contact

	end

	def org
	end

	def workshopdetails
	end

	def trackdetails
	end

	def application
	end
	def trackchairs
	end

	def sponsors
	end

	def payment
	end

	  def admin_signin
  end

  private

    def check_if_admin
      if user_signed_in?
        if current_user.admin == true
          redirect_to rails_admin_path
        else
              STDOUT.puts "CHECK ADMIN"
          redirect_to root_path
        end
      end
    end
	
end
