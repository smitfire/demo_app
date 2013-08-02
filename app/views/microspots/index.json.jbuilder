json.array!(@microspots) do |microspot|
  json.extract! microspot, :content, :user_id
  json.url microspot_url(microspot, format: :json)
end