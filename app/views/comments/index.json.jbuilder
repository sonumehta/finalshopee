json.array!(@comments) do |comment|
  json.extract! comment, :id, :product_id, :content, :text, :user_id
  json.url comment_url(comment, format: :json)
end
