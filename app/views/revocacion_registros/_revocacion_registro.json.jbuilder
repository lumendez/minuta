json.extract! revocacion_registro, :id, :titulo, :director, :user_id, :valida_consejero, :valida_coordinador, :estado, :created_at, :updated_at
json.url revocacion_registro_url(revocacion_registro, format: :json)