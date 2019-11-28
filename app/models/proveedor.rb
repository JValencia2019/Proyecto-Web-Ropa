class Proveedor < ApplicationRecord

	validates :nombre, presence: {
		message: "es obligatorio."
	}
	validates :direccion, presence: {
		message: "es obligatorio."
	}
	validates :rubro, presence: {
		message: "es obligatorio."
	}
	validates :servicio, presence: {
		message: "es obligatorio."
	}
	validates :correoElectronico, presence: {
		message: "es obligatorio."
	}
	validates :telefono, presence: {
		message: "es obligatorio."
	}
	

end
