class DeliveriesController < ApplicationController

	def index 
		@deliveries = Delivery.find_all_by_user_id(current_user)
			respond_to do |format|
				format.html # index.html.erb
				format.json { render :json => @delivery }
			end
	end 

	def show
		@delivery = Delivery.find(params[:id])
    @pickup_location = Location.find(@delivery.source)
		@dropoff_location = Location.find(@delivery.destination)
		respond_to do |format|
			format.html
			format.json { render :json => @delivery }
		end
	end

  def new 
		@delivery = Delivery.new

		respond_to do |format|
			format.html # new.html.erb
			format.json { render :json => @deliver }
		end
  end

  def complete
  end

  def remove
  end

  def edit
  end

	def create 
		if params[:commit] == "Show on map"
			to << "#{params[:address]} #{params[:street]} #{params[:city]}"
			redirect_to :back
		else
			@delivery = Delivery.new(params[:delivery])
			@delivery.user_id = current_user

			respond_to do |format|
				if @delivery.save
					format.html { redirect_to @delivery, :notice => 'You package will be picked up soon'}
					format.json { render :json => @delivery, :status => :created, :location => @delivery }
				else
					format.html { render :action => "new" }
					format.json { render :json => @delivery.errors, :status => :unprocessable_entity } 
				end
			end
		end
	end
end
