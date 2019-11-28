class CreatePedidos < ActiveRecord::Migration[6.0]
  def change
    create_table :pedidos do |t|
      t.string :usuario
      t.string :producto
      t.integer :cantidad
      t.decimal :precio
      t.string :DNI
      t.string :nombres
      t.string :direccion
      t.string :estado
      t.decimal :costoenvio

      t.timestamps
    end
  end
end
