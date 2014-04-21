class LineItem < ActiveRecord::Base
belongs_to :product
belongs_to :cart
belongs_to :customerorder

def total_price
product.price * quantity
end

end
