json.extract! cliente, :id, :nombre, :cifNif, :direccion, :localidad, :cp, :provincia, :telefono, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
