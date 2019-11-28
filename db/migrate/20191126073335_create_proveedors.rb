class CreateProveedors < ActiveRecord::Migration[6.0]
  def change
    create_table :proveedors do |t|
      t.string :nombre
      t.string :direccion
      t.string :rubro
      t.string :servicio
      t.string :correoElectronico
      t.integer :telefono
      t.string :sitioWed

      t.timestamps
    end
  end
end
