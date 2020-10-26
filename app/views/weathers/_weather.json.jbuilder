json.extract! weather, :id, :name, :created_at, :updated_at
json.url weather_url(weather, format: :json)
