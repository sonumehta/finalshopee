class CreateCustomerorders < ActiveRecord::Migration
  def change
    create_table :customerorders do |t|
      t.string :name
      t.text :address
      t.string :email
      t.string :pay_type

      t.timestamps
    end
  end
end
