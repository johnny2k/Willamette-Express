class ApplicationController < ActionController::Base
  protect_from_forgery
	before_filter :load_site_data

	protected 

	def load_site_data
		@delivery = Delivery.new
		@location = Location.new
		@to = ""
		if user_signed_in?
			@locations = Location.where('user_id = ' + current_user.id.to_s)
		end
	end
end
