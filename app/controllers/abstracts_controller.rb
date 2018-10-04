class AbstractsController < ApplicationController
	# before_action :authenticate_user!
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
  	if current_user
  		if current_user.abstract.present?
  			redirect_to abstract_path(current_user.abstract.last.id)
  		end
  		@uploaded_abstract = current_user.abstract
  	end
  	

  end

  def create
    # Make an object in your bucket for your upload

    if params[:file]
	    if params[:file].content_type != 'application/pdf' 
	    	flash[:notice] = 'Please upload a pdf file'
	    	redirect_to root_path
	    else

	    	    obj = S3_BUCKET.objects[params[:file].original_filename]

		    # Upload the file
		    obj.write(
		      file: params[:file],
		      acl: :public_read
		    )

		    # Create an object for the upload
		    @upload = Abstract.new(
		    		abstract_url: obj.public_url,
				title: obj.key,
				user_id: current_user.id,
				category: params[:category]
		    	)

		    # Save the upload
		    if @upload.save
		    	flash[:notice] = 'Abstract uploaded successfully'
		    	AbstractMailer.abstract_send(@upload).deliver
		      	redirect_to abstract_path(current_user.abstract.last.id)
		    else
		      flash[:alert] = 'There was an error'
		      render :new
		    end
	    	
	    end
	end
	
	

  end

  def destroy
  	Abstract.find_by(id: params[:id], sender_Id: 1).destroy
  		render :new
  end

  def index
  end

  def show
  	# render json: current_user.abstract.last
  	@uploaded_abstract = current_user.abstract.last
  end
end