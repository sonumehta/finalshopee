class AddOrderIdToLineItem < ActiveRecord::Migration
  def change
    add_column :line_items, :customerorder_id, :integer
  end
end
