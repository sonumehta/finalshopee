class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :address1, :string
    add_column :users, :address2, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :pincode, :string
    add_column :users, :country, :string
    add_column :users, :phone, :string
    add_column :users, :card, :string
    add_column :users, :cardID, :string
    add_column :users, :cardexpyr, :integer
    add_column :users, :cardexpmo, :string
  end
end
