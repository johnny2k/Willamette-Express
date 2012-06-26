class AddShippedToDeliveries < ActiveRecord::Migration
  def change
		add_column :deliveries, :shipped, :boolean
  end
end
