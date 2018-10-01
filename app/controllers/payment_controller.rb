class PaymentController < ApplicationController

	def received
		@msg = params[:msg]
		# render json: @msg
	end
end
