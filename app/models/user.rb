class User < ActiveRecord::Base
  has_many :rounds
  has_many :decks, :through => :rounds
  
  validates :password, confirmation: true

  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def create(params)
    @user = User.new(params[:username])
    @user.password = params[:password]
    @user.save!
  end

end
