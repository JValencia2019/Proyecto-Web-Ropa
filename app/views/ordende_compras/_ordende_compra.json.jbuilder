json.extract! ordende_compra, :id, :fecha, :producto, :cantidad, :precio, :boleta, :DNI, :nombre, :tipo_pago, :total, :created_at, :updated_at
json.url ordende_compra_url(ordende_compra, format: :json)
