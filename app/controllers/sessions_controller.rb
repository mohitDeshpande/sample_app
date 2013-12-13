class SessionsController < ApplicationController

	def new
	end
	
	def create
		user = User.find_by(email: params[:sessions][:email].downcase)
		
		if user && user.authenticate(params[:sessions][:password])
			# sign in and redirect to show page of user
		else
			flash.now[:error] = "Invalid email/password combination"
			render 'new'
		end
		
	end
	
	def destroy
	end

end
