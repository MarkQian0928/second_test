json.array!(@happies) do |happy|
  json.extract! happy, :id, :content, :user_id
  json.url happy_url(happy, format: :json)
end
