json.extract! treeweather, :id, :tree_id, :weather_id, :created_at, :updated_at
json.url treeweather_url(treeweather, format: :json)
