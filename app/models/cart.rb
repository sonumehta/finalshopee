class Cart < ActiveRecord::Base
has_many :line_items, :dependent => :destroy

def add_product(product_id)
	current_item = line_items.where(:product_id => product_id).first
	if current_item
		current_item.quantity += 1
	else
		current_item = LineItem.new(:product_id=>product_id)
		line_items << current_item
	end
	current_item
end


def total_price
line_items.to_a.sum { |item| item.total_price }
end

def total_items
line_items.sum(:quantity)
end


 private

  def set_current_cart
    if session[:cart_id]
      @current_cart ||= Cart.find(session[:cart_id])
      session[:cart_id] = nil if @current_cart.created_at
    end
    if session[:cart_id].nil?
      @current_cart = Cart.create!
      session[:cart_id] = @current_cart.id
    end
  end


end
