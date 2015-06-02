class Seller < ActiveRecord::Base
	
	has_many :services, inverse_of: :seller

	has_secure_password
	# allow word@word.word not case sensitve
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\-.]+\.[a-z]+\z/i
	validates :email, presence: true, length: {maximum: 255}, format: {with: VALID_EMAIL_REGEX},
				uniqueness: { case_sensitive: false}


end
