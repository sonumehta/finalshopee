class CreateViewedpros < ActiveRecord::Migration
  def change
    create_table :viewedpros do |t|
      t.integer :user_id
      t.integer :product_id

      t.timestamps
    end
  end
end
