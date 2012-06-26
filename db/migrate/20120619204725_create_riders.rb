class CreateRiders < ActiveRecord::Migration
  def change
    create_table :riders do |t|
      t.string :name
      t.integer :location_id
      t.decimal :gas_mileage
      t.decimal :tank_size
      t.decimal :luggage_capacity
      t.integer :user_id

      t.timestamps
    end
  end
end
