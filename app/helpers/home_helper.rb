module HomeHelper
	def index 
		@delivery = Delivery.new

		respond_to do |format|
			format.html
			format.json { render :json => @delivery }
		end
	end

end
