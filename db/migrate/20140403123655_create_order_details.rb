class CreateOrderDetails < ActiveRecord::Migration
  def change
    create_table :order_details do |t|
      t.integer :orderID
      t.integer :productID
      t.integer :orderNumber
      t.float :price
      t.integer :quantity
      t.float :discount
      t.float :total
      t.integer :IDSKU
      t.string :size
      t.string :color
      t.datetime :shipdate
      t.datetime :billdate

      t.timestamps
    end
  end
end
