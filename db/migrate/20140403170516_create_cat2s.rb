class CreateCat2s < ActiveRecord::Migration
  def change
    create_table :cat2s do |t|
      t.string :name
      t.integer :cat1_id

      t.timestamps
    end
  end
end
