class Seller < ActiveRecord::Base
	
	has_many :services, inverse_of: :seller

	has_secure_password

	validates :name, presence: true
	validates :username, presence: true
	validates :contact, presence: true
	# allow word@word.word not case sensitve
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\-.]+\.[a-z]+\z/i
	validates :email, presence: true, length: {maximum: 255}, format: {with: VALID_EMAIL_REGEX},
				uniqueness: { case_sensitive: false}

	validates :password, presence: true, length: { in: 4..20 }, confirmation: true

	def password=(unencrypted_password)
  		unless unencrypted_password.empty?
    		@password = unencrypted_password
    		self.password_digest = BCrypt::Password.create(unencrypted_password)
  		end
	end
end
