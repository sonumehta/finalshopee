class AddPicToProducts < ActiveRecord::Migration
  def self.up
    add_attachment :products, :pic
  end

  def self.down
    remove_attachment :products, :pic
  end
end
