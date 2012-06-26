class AddAddressToUsers < ActiveRecord::Migration
  def change
		add_column :users, :address, :string
		add_column :users, :street, :string
		add_column :users, :city, :string
  end
end
