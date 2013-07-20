require 'faker'

10.times do
  pass = Faker::Lorem.words(1)
  new_user = User.create({
    username: Faker::Internet.user_name,
    password: pass,
    password_confirmation: pass
    })
end

card_seeds = {
  "Greatest cake on Earth" => "carrot cake",
  "Higest Volume Ingredients" => "carrots",
  "How much flour in Carrot Cake" => "2 cups",
  "Are Carrot Top's jokes funny?" => "no",
  "Greatest cake on Earth" => "carrot cake",
  "Greatest cake on Earth" => "carrot cake",
  "Greatest cake on Earth" => "carrot cake",
  "Greatest cake on Earth" => "carrot cake",
}

carrot_cake_deck = Deck.create(name:"carrot cake")

card_seeds.each do |question,answer|
  Card.create({
    question:question,
    answer:answer,
    deck: carrot_cake_deck
    })
end

round = Round.create(user_id:1,deck_id:1)


round.deck.cards.count.times do |card|
  round.guesses << Guess.create(card_id:card,attempt:"carrots")
end
round.save
