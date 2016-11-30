json.extract! cursar_asignatura, :id, :nombre, :clave, :unidad, :created_at, :updated_at
json.url cursar_asignatura_url(cursar_asignatura, format: :json)