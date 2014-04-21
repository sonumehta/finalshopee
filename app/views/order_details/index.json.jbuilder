json.array!(@order_details) do |order_detail|
  json.extract! order_detail, :id, :orderID, :productID, :orderNumber, :price, :quantity, :discount, :total, :IDSKU, :size, :color, :shipdate, :billdate
  json.url order_detail_url(order_detail, format: :json)
end
