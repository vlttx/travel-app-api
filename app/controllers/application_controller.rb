class ApplicationController < ActionController::API
	
		def current_user
			User.first
			#a mocked version of being logged in
		end

		def logged_in?
			!!current_user
		end

end
