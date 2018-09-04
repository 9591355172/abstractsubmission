class AbstractsController < ApplicationController
	# require 'aws-sdk'
	# 	def create
	# 	@abstract = Abstract.new(request_params)
	# 	# @abstract_submit.user_id = current_user.id;
	# 	@file = params[:abstract][:abstract_url]
	# 	# render json:@video
	# 	doc = S3Store.new(@file).store
	# 		@abstract.abstract_url = doc.url;
	# 	@abstract.save!
	# 	if !(@file.content_type != 'application/pdf')
	# 		flash[:alert] = "Document type must be PDF."
	# 		redirect_to root_path

	# 	else
	# 		doc = S3Store.new(@file).store
	# 		@abstract.abstract_url = doc.url;

	# 		if @abstract.save
	# 			flash[:notice] = "Your #{@blog_post_request.request_type.capitalize} Request has been sent. You will be notified on approval."
	# 			redirect_to root_path
	# 		else
	# 			flash[:alert] = "Error occured while creating Blog Post Request."
	# 			redirect_to root_path
	# 		end

	# 	end
	# end

	# private

	# 	def request_params
	# 		params.require(:abstract).permit(:abstract_url)
	# 	end

  def new
  end

  def create
    # Make an object in your bucket for your upload
    obj = S3_BUCKET.objects[params[:file].original_filename]

    # Upload the file
    obj.write(
      file: params[:file],
      acl: :public_read
    )

    # Create an object for the upload
    @upload = Abstract.new(
    		abstract_url: obj.public_url,
		title: obj.key
    	)

    # Save the upload
    if @upload.save
      redirect_to root_path, success: 'File successfully uploaded'
    else
      flash.now[:notice] = 'There was an error'
      render :new
    end
  end

  def index
  end
end