class Guess < ActiveRecord::Base
  belongs_to :card
  belongs_to :round
  validates :attempt, presence: true
  validates :correct, presence: true

  # before_validation :check_answer

  
  def check_answer(guess, card)
    card = Card.find(card)
    p "%" * 100
    puts guess.inspect
    puts card.inspect
    if guess.downcase == card.answer.downcase
      self.correct = 1
    else
      self.correct = 0
    end
  end

end
