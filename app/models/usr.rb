require "bcrypt"

class Usr < ActiveRecord::Base
	has_many :custom_field
	has_many :contact
	
	attr_accessor :password, :password_confirmation
	
	validates_presence_of :name, :login, :password, :password_confirmation
	validates_uniqueness_of :login
	validates_length_of :password, minimum:6
	validates_confirmation_of :password
	
	def password=(new_password)
		@password = new_password
		self.pass = BCrypt::Password.create(@password)
	end
	
	def password
		@password
	end
	
	def valid_password?(pass_to_validate)
		BCrypt::Password.new(self.pass) == pass_to_validate
	end
		
	
end
