get '/game/:deck_id' do
  user = User.find(1)
  round = user.rounds.create(deck_id: params[:deck_id])
  @cards = Deck.find(params[:deck_id]).cards.shuffle
  @rounds = round.id

  # user = User.find(current_user)
  # round = user.rounds.create(deck_id: session[:deck_id])
  # @cards = Deck.find(session[:deck_id]).cards.shuffle

  erb :game
end

post '/guess' do
  p params[:round_id].class
  guess = Guess.create(round_id: params[:round_id].to_i, attempt: params[:guess], card_id: params[:card_id].to_i )
  p guess.errors.inspect
  # guess = Guess.new(attempt: params[:guess])
  # guess.round = Round.find(params[:round_id].to_i)
  # guess.card = Card.find(params[:card_id].to_i)

  # puts guess.valid?
  # puts guess.inspect
  # redirect to('/game/')
end
