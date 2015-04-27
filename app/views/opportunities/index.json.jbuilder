json.array!(@opportunities) do |opportunity|
  json.extract! opportunity, :id, :title, :description, :how_to, :city_id
  json.url opportunity_url(opportunity, format: :json)
end
