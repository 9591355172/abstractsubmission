class HomeController < ApplicationController
require 'digest/md5'
before_action :check_if_admin, only: [:admin_signin]
skip_before_action :verify_authenticity_token, only: [:payment]

	def index
	end
	
	def abstract
		@abstract_submit = Abstract.new
	end

	def about
	end
	
	def fees
		if current_user
		 @txnid = current_user.id
         @txnid = "9090" + @txnid.to_s 
         @token1 = Digest::SHA2.new(512).hexdigest("L522|"+@txnid+"|8000||1|9591355172|abhijeet428001@gmail.com||||||||||9567859878ALCMJH")
		 @token2 = Digest::SHA2.new(512).hexdigest("L522|"+@txnid+"|6000||1|9591355172|abhijeet428001@gmail.com||||||||||9567859878ALCMJH")
		 @token3 = Digest::SHA2.new(512).hexdigest("L522|"+@txnid+"|6000||1|9591355172|abhijeet428001@gmail.com||||||||||9567859878ALCMJH")
		 @token4 = Digest::SHA2.new(512).hexdigest("L522|"+@txnid+"|2000||1|9591355172|abhijeet428001@gmail.com||||||||||9567859878ALCMJH")
		 @token5 = Digest::SHA2.new(512).hexdigest("L522|"+@txnid+"|1500||1|9591355172|abhijeet428001@gmail.com||||||||||9567859878ALCMJH")	
		end
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
		if current_user
		 @txnid = current_user.id
         @txnid = "9090" + @txnid.to_s 
         @token1 = Digest::SHA2.new(512).hexdigest("L522|"+@txnid+"|1000||1|9591355172|abhijeet428001@gmail.com||||||||||9567859878ALCMJH")
		 @token2 = Digest::SHA2.new(512).hexdigest("L522|"+@txnid+"|3000||1|9591355172|abhijeet428001@gmail.com||||||||||9567859878ALCMJH")
		  # render json: @token
		end
	end



	def trackchairs
	end

	def sponsors
	end

	def payment
		# render json: params[:msg]
		@arr = params[:msg].split('|')
		# render json: @arr
		if @arr[1] == 'failure'
			flash[:notice] = @arr[2]
			redirect_to root_path
		elsif @arr[1] == 'Success'
			@payment = Pay.new(first_name: current_user.first_name, last_name: current_user.last_name, email: current_user.email, txnid: @arr[3], user_id: current_user.id)
			if @payment.save!
				flash[:notice] = "Payment complete" 
				redirect_to root_path
			else
				flash[:notice] = "Payment incomplete"
				redirect_to root_path
			end 
		else @arr[1] = 'Aborted'
			flash[:notice] = "Payment Aborted"
		end
	end

	def hotels
	end

	def schedule
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
