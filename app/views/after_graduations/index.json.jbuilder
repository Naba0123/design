json.array!(@after_graduations) do |after_graduation|
  json.extract! after_graduation, :belong, :position, :job_kind, :other
  json.url after_graduation_url(after_graduation, format: :json)
end
