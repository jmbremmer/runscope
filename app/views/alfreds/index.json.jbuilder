json.array!(@alfreds) do |alfred|
  json.extract! alfred, :id, :alfred
  json.url alfred_url(alfred, format: :json)
end
