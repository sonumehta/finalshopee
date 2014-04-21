class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
	
  include SessionsHelper


def current_product
Product.find(session[:product_id])
rescue ActiveRecord::RecordNotFound
product = Product.create
session[:product_id] = product.id
product
end



  


def current_cart
Cart.find(session[:cart_id])
rescue ActiveRecord::RecordNotFound
cart = Cart.create
session[:cart_id] = cart.id
cart
end

end
