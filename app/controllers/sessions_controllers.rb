get '/login' do
	erb :"sessions/login"
end


get '/users/dashboard' do
	authenticate_user!
	erb :"sessions/temp"
end

post '/login' do
	session[:user] = User.authenticate(params[:user])

	unless current_user.nil?
		path = "/users/dashboard"
	else
		path = "/login"
	end
	redirect to path
end

post '/logout' do
	logout_user
	redirect to '/login'
end