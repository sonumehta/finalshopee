json.array!(@orders) do |order|
  json.extract! order, :id, :custID, :orderNumber, :payID, :orderdate, :shipdate, :reqdate, :shipperID, :salesTax, :status, :error, :fulfilled, :deleted, :paid, :paydate
  json.url order_url(order, format: :json)
end
