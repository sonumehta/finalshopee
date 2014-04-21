class AddColumnsToOrderDetails < ActiveRecord::Migration
  def change
    add_column :order_details, :badd, :string
    add_column :order_details, :bcity, :string
    add_column :order_details, :bstate, :string
    add_column :order_details, :bpincode, :string
    add_column :order_details, :bcountry, :string
    add_column :order_details, :sadd, :string
    add_column :order_details, :scity, :string
    add_column :order_details, :sstate, :string
    add_column :order_details, :scountry, :string
    add_column :order_details, :spincode, :string
  end
end
