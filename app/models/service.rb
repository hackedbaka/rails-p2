class Service < ActiveRecord::Base
	belongs_to :category, inverse_of: :services
	belongs_to :seller, inverse_of: :services
	
	def self.search(query)
  		where("name ILIKE ?", "%#{query}%") 
	end
end
