enable :sessions

get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/user/create' do
  puts params.inspect
  @new_user = User.create(params)
  puts @new_user.errors.inspect
  if @new_user.errors.any?
    erb :index
  else
    session[:id] = @new_user.id 
    erb :decks
  end
end

post '/user/login' do

  erb :decks
end
