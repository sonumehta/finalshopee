class AddStatusToCustomerorders < ActiveRecord::Migration
  def change
	add_column :customerorders, :status, :string, :default=> "Pending"
  end
end
