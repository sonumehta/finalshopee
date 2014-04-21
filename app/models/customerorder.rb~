class Customerorder < ActiveRecord::Base
belongs_to :user
PAYMENT_TYPES = [ "Check" , "Credit card" , "Purchase order" ]
STATUS_TYPES = ["Pending", "Shipped"]
validates :name, :address, :email, :pay_type,:status, :presence => true
validates :pay_type, :inclusion => PAYMENT_TYPES
validates :status, :inclusion => STATUS_TYPES
has_many :line_items, :dependent => :destroy

	def add_line_items_from_cart(cart)
		cart.line_items.each do |item|
		item.cart_id = nil
		line_items << item
		end
	end


end
