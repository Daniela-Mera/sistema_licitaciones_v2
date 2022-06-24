json.extract! estado_licitacion, :id, :estado, :descripcion, :created_at, :updated_at
json.url estado_licitacion_url(estado_licitacion, format: :json)
