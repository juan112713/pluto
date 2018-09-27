json.extract! paradero, :id, :nombre_p, :tipo_p, :ubicacion_p, :created_at, :updated_at
json.url paradero_url(paradero, format: :json)
