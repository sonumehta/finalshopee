class AddUserIdToShippers < ActiveRecord::Migration
  def change
	add_column :shippers, :user, :integer
		add_column :shippers, :product, :integer
  end
end
