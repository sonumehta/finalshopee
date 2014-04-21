class AddUserIdToOrders < ActiveRecord::Migration
  def change
	add_column :customerorders, :user_id, :integer
  end
end
