class Guess < ActiveRecord::Base
  belongs_to :card
  belongs_to :round
  validates :attempt, presence: true
  validates :correct, presence: true

  before_validation :check_answer

  private
    def check_answer
      self.correct = (self.attempt.downcase == self.card.answer.downcase)
    end

end
