require 'bcrypt'

class User < ActiveRecord::Base
  has_many :rounds

  has_many :decks, through: :rounds
  
  validates :password, confirmation: true
  validates :username, presence: true

  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def self.create(params)
      @user = User.new(username: params[:username])
      @user.password = params[:password]
      @user.save! if User.password_confirmation(params)
      @user
  end

# Password confirmation validation
  def self.password_confirmation(params)
    if params[:password] != params[:password_confirmation]
      @user.errors.add(:password,"mismatch")
      return false
    end
    true
  end
end
