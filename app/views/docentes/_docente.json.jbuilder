json.extract! docente, :id, :user_id, :nombre, :apellido_p, :apellido_m, :created_at, :updated_at
json.url docente_url(docente, format: :json)
