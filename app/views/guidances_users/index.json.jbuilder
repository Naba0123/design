json.array!(@guidances_users) do |guidances_user|
  json.extract! guidances_user, :user_id, :guidance_id
  json.url guidances_user_url(guidances_user, format: :json)
end
