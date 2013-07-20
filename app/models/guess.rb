class Guess < ActiveRecord::Base
  belongs_to :card
  belongs_to :round
  validates :attempt, presence: true
  validates :correct, presence: true

  # before_validation :check_answer

  
  def check_answer(guess, card)
    card = Card.find(card)
    puts guess.inspect
    puts card.inspect
    self.correct = (guess.downcase == card.answer.downcase)
  end

end
