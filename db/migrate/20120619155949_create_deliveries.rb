class CreateDeliveries < ActiveRecord::Migration
  def change
    create_table :deliveries do |t|
      t.integer :source
      t.integer :destination
      t.time :pickup_time
      t.decimal :distance
      t.boolean :temperature_sensitive
      t.integer :driver_id

      t.timestamps
    end
  end
end
