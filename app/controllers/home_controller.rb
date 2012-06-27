class HomeController < ApplicationController
  def index
		if user_signed_in?
			@user = User.find(current_user)
			@json = @user.to_gmaps4rails
		else 
			@json = nil
		end
	end
end
