class Service < ActiveRecord::Base
	belongs_to :category, inverse_of: :services
end
