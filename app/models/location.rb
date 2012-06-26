class Location < ActiveRecord::Base
  acts_as_gmappable	
	belongs_to :user
	has_one :user
  attr_accessible :address, :city, :country, :latitude, :longitude, :state, :user_id, :name
 
  validates :address, :city, :state, :name, :presence => true
 
	def gmaps4rails_address
		"#{self.address} #{self.city}, #{state}" 
	end
end
