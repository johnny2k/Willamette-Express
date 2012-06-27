class CombineAddressAndStreetInLocations < ActiveRecord::Migration
  def up
		remove_column :locations, :street
  end

  def down
		add_column :locations, :street
  end
end
