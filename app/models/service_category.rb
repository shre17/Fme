class ServiceCategory < ApplicationRecord
	has_many :professionals, :class_name => "User"
end
