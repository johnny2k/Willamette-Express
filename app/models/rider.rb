class Rider < ActiveRecord::Base
  attr_accessible :gas_mileage, :location_id, :luggage_capacity, :name, :tank_size, :user_id
	belongs_to :user
	has_one :location
end
