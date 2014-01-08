json.array!(@guidances) do |guidance|
  json.extract! guidance, :guidance_date, :guidance_place, :guidance_kind
  json.url guidance_url(guidance, format: :json)
end
