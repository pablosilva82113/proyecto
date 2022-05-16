json.extract! actividad, :id, :tipo_id, :docente_id, :titulo, :descripcion, :created_at, :updated_at
json.url actividad_url(actividad, format: :json)
