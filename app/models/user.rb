require 'bcrypt'
class User
  include Mongoid::Document
  field :email, type: String
  field :salt, type: String
  field :hashed_password, type: String
  has_many :thelists

  validates :username, uniquness: true
  
  def authenticate?(password)
  	self.hashed_password == BCrypt::Engine.hash_secret(password, self.salt)
	end

before_save :hashed_password

private
	def hash_word
		self.salt =BCrypt::Engine.generate_salt
		self.hashed_password = BCrypt::Engine.hash_secret self.password, self.salt
		self.password = nil
	end
end
