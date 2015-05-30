class Category < ActiveRecord::Base
	has_many :services, inverse_of: :category
end
