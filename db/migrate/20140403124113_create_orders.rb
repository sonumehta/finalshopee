class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :custID
      t.integer :orderNumber
      t.integer :payID
      t.datetime :orderdate
      t.datetime :shipdate
      t.datetime :reqdate
      t.integer :shipperID
      t.float :salesTax
      t.string :status
      t.text :error
      t.boolean :fulfilled
      t.boolean :deleted
      t.boolean :paid
      t.datetime :paydate

      t.timestamps
    end
  end
end
