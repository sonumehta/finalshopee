class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.string :type
      t.boolean :allowed

      t.timestamps
    end
  end
end
