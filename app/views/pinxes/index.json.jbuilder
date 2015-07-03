json.array!(@pinxes) do |pinx|
  json.extract! pinx, :id, :description
  json.url pinx_url(pinx, format: :json)
end
