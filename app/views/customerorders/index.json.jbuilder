json.array!(@customerorders) do |customerorder|
  json.extract! customerorder, :id, :name, :address, :email, :pay_type
  json.url customerorder_url(customerorder, format: :json)
end
