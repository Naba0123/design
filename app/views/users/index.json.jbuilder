json.array!(@users) do |user|
  json.extract! user, :name, :country, :address, :tel, :work, :worktype, :birth, :gender
  json.url user_url(user, format: :json)
end
