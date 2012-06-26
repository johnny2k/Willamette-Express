class LocationsController < ApplicationController
  def index
		@locations = Location.all
		
		respond_to do |format|
			format.html # index.html.erb
			format.json { render :json => @locations }
		end
  end

  def new
		@location = Location.new
		respond_to do |format|
			format.html # new.html.erb
			format.json { render :json => @location }
		end
  end

  def destroy
  end

  def create
		@location = Location.new(params[:location])
		@location.user_id = current_user[:id]
			
		respond_to do |format|
			if params[:commit] == "Show on map"
				@to << "#{params[:address]} #{params[:street]} #{params[:city]}"
				format.html { redirect_to :back}
			else
				if @location.save
					format.html { redirect_to :back, :notice => 'Location was successfully created.' }
					format.json { render :json => @location, :status => :created, :location => @location }
				else
					format.html { render :action => "new" }
					format.json { render :json => @location.errors, :status => :unprocessable_entity }
				end
			end
		end
  end

  def update
  end

  def show
		@location = Location.find(params[:id])
		@json = @location.to_gmaps4rails 	
		respond_to do |format|
			format.html 
			format.json { render :json => :location }
		end
  end

  def edit
  end
end
