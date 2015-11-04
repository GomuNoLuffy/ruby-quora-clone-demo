# index
# get '/users' do
# end

# new
get '/users/new' do
	erb :"/users/new"
end

# show
# get '/users/:id' do
# end

# edit
get '/users/:id/edit' do
	erb :"/users/edit"
end

# create
post '/users' do
	byebug
	user = User.create(params[:user])
	redirect to '/users/new'
end

# update
post '/users/:id/update' do
	byebug
	redirect to '/'
end

# delete
# post '/users/:id/delete' do
# end