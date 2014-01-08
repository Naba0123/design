json.array!(@events) do |event|
  json.extract! event, :name, :date, :place, :detail
  json.url event_url(event, format: :json)
end
