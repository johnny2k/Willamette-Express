class CombineAddressAndStreetInLocations < ActiveRecord::Migration
  def up
		remove_column :users, :street
  end

  def down
		add_column :users, :street
  end
end
