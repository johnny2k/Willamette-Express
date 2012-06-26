class AddDeadLineToDeliveries < ActiveRecord::Migration
  def change
		add_column :deliveries, :dead_line, :time 
  end
end
