class PaymentController < ApplicationController

	def new
		@payment = Payment.new
	end

	def create
		@payment = Payment.create(payment_params)
	end

	private

	def payment_params
		params.require(:payment).permit(:first_name, :last_name, :email)
	end
end
