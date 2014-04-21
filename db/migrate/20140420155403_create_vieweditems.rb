class CreateVieweditems < ActiveRecord::Migration
  def change
    create_table :vieweditems do |t|

      t.timestamps
    end
  end
end
