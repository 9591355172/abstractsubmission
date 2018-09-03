class HomeController < ApplicationController

	def index
	end
	
	def abstract
		@abstract_submit = Abstract.new
	end
end
