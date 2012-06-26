class User < ActiveRecord::Base
	acts_as_gmappable
  has_many :locations
	def gmaps4rails_address
		"#{self.address} #{self.city}, #{state} " 
  end
	
	
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :latitude, :longitude, :address, :city, :state
  # attr_accessible :title, :body
end
