json.array!(@products) do |product|
  json.extract! product, :id, :pname, :IDSKU, :supplier_id, :subcat_id, :desc, :price, :color, :discount, :product_available, :discount, :picture, :ranking
  json.url product_url(product, format: :json)
end
