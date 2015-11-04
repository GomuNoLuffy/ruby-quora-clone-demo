helpers do
	def current_user
		session[:user]
	end

	def logout_user
		session.delete :user
	end

	def authenticate_user!
		redirect to '/login' if current_user.nil?
	end
end