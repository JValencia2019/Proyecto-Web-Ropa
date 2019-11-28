class CreateOrdendeCompras < ActiveRecord::Migration[6.0]
  def change
    create_table :ordende_compras do |t|
      t.date :fecha
      t.string :producto
      t.integer :cantidad
      t.decimal :precio
      t.string :boleta
      t.string :DNI
      t.string :nombre
      t.string :tipo_pago
      t.decimal :total

      t.timestamps
    end
  end
end
