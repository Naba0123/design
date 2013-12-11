json.array!(@certificates) do |certificate|
  json.extract! certificate, :kind, :finish_year, :count, :purpose, :another_address
  json.url certificate_url(certificate, format: :json)
end
