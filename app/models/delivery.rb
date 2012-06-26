class Delivery < ActiveRecord::Base
  attr_accessible :destination, :distance, :driver_id, :pickup_time, :source, :temperature_sensitive, :dead_line
	validates :destination, :source, :presence => true

end
