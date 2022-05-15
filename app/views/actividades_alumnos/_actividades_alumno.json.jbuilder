json.extract! actividades_alumno, :id, :actividad_id, :alumno_id, :calificacion, :observaciones, :created_at, :updated_at
json.url actividades_alumno_url(actividades_alumno, format: :json)
