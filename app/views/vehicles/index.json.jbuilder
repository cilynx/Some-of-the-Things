json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :id, :year, :make, :model, :vin
  json.url vehicle_url(vehicle, format: :json)
end
