class CreateRegistroVentas1s < ActiveRecord::Migration[6.0]
  def change
    create_table :registro_ventas1s do |t|
      t.string :codigo
      t.integer :cantidad
      t.string :valorUnitario
      t.integer :numeroBoleta
      t.string :nombre

      t.timestamps
    end
  end
end
