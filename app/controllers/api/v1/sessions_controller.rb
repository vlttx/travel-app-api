class Api::V1::SessionsController < ApplicationController


	def create
		@user = User.find_by(username: params[:session][:username])

		if @user && @user.authenticate(params[:session][:password])
			session[:user_id] = @user.id
			# setting a user id for the session which is grabbed by app controller
			# render json   :@user

			render json: @user, status: 200


		else
			render json: {
				error: "Invalid Credentials"
			}
	end
end

	def get_current_user
		if logged_in?
			render json: current_user
		else
			render json: {
				error: "No one is logged in"
			}
		end
	end

	def destroy
		session.clear
		render json: {
			notice: "Successfully logged out"
		}, status:200
	end
end
