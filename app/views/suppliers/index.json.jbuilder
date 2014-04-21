json.array!(@suppliers) do |supplier|
  json.extract! supplier, :id, :company_name, :email, :address1, :address2, :city, :state, :pincode, :phone
  json.url supplier_url(supplier, format: :json)
end
