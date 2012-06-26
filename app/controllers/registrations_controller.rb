class RegistrationsController < Devise::RegistrationsController
	prepend_before_filter :require_no_authentication, :only => [ :new, :create, :cancel ]
	prepend_before_filter :authenticate_scope!, :only => [:destroy]
	
	def edit
		@user = current_user
	end

	def update
		@user = User.find(current_user.id)
		if @user.update_attributes(params[:user])
			# Sign in the user bypassing validation in case his password changed
			sign_in @user, :bypass => true
			redirect_to root_path
		else
			render "edit"
		end
	end
end

