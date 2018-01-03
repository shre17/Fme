class Location < ApplicationRecord
	has_many :user_locations
	has_many :users,  through: :user_locations 
	geocoded_by :full_address   
    after_validation :geocode  
	
	def full_address
	 	"#{self.loc_name} #{self.zipcode}"
	end

end
