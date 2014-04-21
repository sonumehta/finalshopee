class AddCartIdToCustomerorders < ActiveRecord::Migration
  def change
add_column :customerorders, :cart_id, :integer
  end
end
