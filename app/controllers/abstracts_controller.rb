class AbstractsController < ApplicationController
	require 'aws-sdk'
		def create
		@abstract = Abstract.new(request_params)
		# @abstract_submit.user_id = current_user.id;
		@file = params[:abstract][:abstract_url]
		# render json:@video
		@abstract.save!
		if !(@file.content_type != 'application/pdf')
			flash[:alert] = "Document type must be PDF."
			redirect_to root_path

		else
			doc = S3Store.new(@file).store
			@abstract.abstract_url = doc.url;

			if @abstract.save
				flash[:notice] = "Your #{@blog_post_request.request_type.capitalize} Request has been sent. You will be notified on approval."
				redirect_to root_path
			else
				flash[:alert] = "Error occured while creating Blog Post Request."
				redirect_to root_path
			end

		end
	end

	private

		def request_params
			params.require(:abstract).permit(:abstract_url)
		end

end
