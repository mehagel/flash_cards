enable :sessions

get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/user/create' do
  new_user = User.create(params)
  session[:id] = new_user.id
  erb :decks
end

post '/user/login' do

  erb :decks
end
