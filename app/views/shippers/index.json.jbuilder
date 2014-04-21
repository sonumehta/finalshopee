json.array!(@shippers) do |shipper|
  json.extract! shipper, :id, :company_name, :phone
  json.url shipper_url(shipper, format: :json)
end
