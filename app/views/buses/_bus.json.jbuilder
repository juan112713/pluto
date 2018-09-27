json.extract! bus, :id, :movil, :cantidad_sillas, :total_pasajeros, :estado, :created_at, :updated_at
json.url bus_url(bus, format: :json)
