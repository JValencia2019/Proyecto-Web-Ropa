class RegistroVentas1 < ApplicationRecord


	validates :codigo, presence: {
		message: "es obligatorio."
	}
	validates :cantidad, presence: {
		message: "es obligatorio."
	}
	validates :valorUnitario, presence: {
		message: "es obligatorio."
	}
	validates :numeroBoleta, presence: {
		message: "es obligatorio."
	}
	validates :nombre, presence: {
		message: "es obligatorio."
	}
	

end
