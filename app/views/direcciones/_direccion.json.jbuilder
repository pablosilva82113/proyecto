json.extract! direccion, :id, :calle, :numero_exterior, :numero_interior, :colonia, :municipio, :estado, :codigo_postal, :referencia, :created_at, :updated_at
json.url direccion_url(direccion, format: :json)
