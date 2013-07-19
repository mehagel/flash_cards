get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/user/create' do
  puts params.inspect
  # new_user = User.create(params)
  # Look in app/views/index.erb
  # erb :decks
end

post '/user/login' do
  # Look in app/views/index.erb
  erb :decks
end
