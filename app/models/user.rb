class User < ActiveRecord::Base
  #TODO : Use bcrypt to store hashed passwords and authenticate users

  has_many :blogs

  validates :email, presence: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
  validates :email, uniqueness: true

  include BCrypt

  def hash_password
    @password ||= Password.new(password_hash)
  end

  def hash_password=(new_password)
    @password=Password.create(new_password)
    self.password_hash = @password
  end

end
