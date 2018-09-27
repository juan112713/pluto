json.extract! usuario, :id, :nombre, :apellido, :tipo_doc_identidad, :num_doc_identidad, :fecha_nacimiento, :estado, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
