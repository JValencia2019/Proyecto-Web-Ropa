class OrdendeCompra < ApplicationRecord

	

	validates :fecha, presence: {
		message: "es obligatorio."
	}
	validates :producto, presence: {
		message: "es obligatorio."
	}
	validates :cantidad, presence: {
		message: "es obligatorio."
	}
	validates :precio, presence: {
		message: "es obligatorio."
	}
	validates :boleta, presence: {
		message: "es obligatorio."
	}

	validates :DNI, length: {
		minimum: 8,
		too_short: "debe tener 8 digitos."
	}, uniqueness: {
		message: "ya esta registrado, ingrese otro."
	}

	validates :nombre, presence: {
		message: "es obligatorio."
	}
	validates :tipo_pago, presence: {
		message: "es obligatorio."
	}
	validates :total, presence: {
		message: "es obligatorio."
	}
	



end
