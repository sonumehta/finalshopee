json.array!(@viewedpros) do |viewedpro|
  json.extract! viewedpro, :id, :user_id, :product_id
  json.url viewedpro_url(viewedpro, format: :json)
end
