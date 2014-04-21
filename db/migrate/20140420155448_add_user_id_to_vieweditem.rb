class AddUserIdToVieweditem < ActiveRecord::Migration
  def change
	add_column :vieweditems, :user_id, :integer
		add_column :vieweditems, :product_id, :integer
  end
end
