json.array!(@events) do |event|
  json.extract! event, :meeting_date, :meeting_place, :event_type
  json.url event_url(event, format: :json)
end
