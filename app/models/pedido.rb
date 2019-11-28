class Pedido < ApplicationRecord
	



	validates :usuario, presence: {
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
	validates :nombres, presence: {
		message: "es obligatorio."
	}
	validates :direccion, presence: {
		message: "es obligatorio."
	}
	validates :estado, presence: {
		message: "es obligatorio."
	}
	validates :costoenvio, presence: {
		message: "es obligatorio."
	}
	validates :usuario, confirmation: {
		case_sensitive: false
	}


	validates :DNI, length: {
		minimum: 8,
		too_short: "debe tener 8 digitos."
	}, uniqueness: {
		message: "ya esta registrado, ingrese otro."
	}

	 #validates :direccion, format: { with: /\A[a-zA-Z]+\z/,
    #message: "only allows letters" }
end
