class ChangeUserLocationColumns < ActiveRecord::Migration
  def up
		remove_column :users, :street
		add_column :users, :state, :string
  end

  def down
		add_column :users, :street, :string
		remove_column :users, :state, :string
  end
end
