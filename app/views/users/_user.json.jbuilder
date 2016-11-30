json.extract! user, :id, :nombre, :boleta, :sepi_programa_id, :consejero_id, :coordinador_id, :created_at, :updated_at
json.url user_url(user, format: :json)