class AddGmapsToUsers < ActiveRecord::Migration
  def change
		add_column :users, :latitude, :float # can be a different name
		add_column :users, :longitude, :float # can be a different name
		add_column :users, :gmaps, :boolean # not required
  end
end
