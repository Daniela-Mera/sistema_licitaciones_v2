json.extract! licitacion, :id, :nombre_proyecto, :descripcion, :presupuesto, :duracion_en_meses, :fecha_de_inicio, :fk_region, :fk_estado_licitacion, :created_at, :updated_at
json.url licitacion_url(licitacion, format: :json)
