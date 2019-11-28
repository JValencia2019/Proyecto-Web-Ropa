json.extract! pedido, :id, :usuario, :producto, :cantidad, :precio, :DNI, :nombres, :direccion, :estado, :costoenvio, :created_at, :updated_at
json.url pedido_url(pedido, format: :json)
