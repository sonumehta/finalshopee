class CreateCat3s < ActiveRecord::Migration
  def change
    create_table :cat3s do |t|
      t.string :name
      t.integer :cat2_id

      t.timestamps
    end
  end
end
