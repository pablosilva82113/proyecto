json.extract! alumno, :id, :carrera_id, :user_id, :no_control, :semestre, :nombre, :apellido_p, :apellido_m, :created_at, :updated_at
json.url alumno_url(alumno, format: :json)
