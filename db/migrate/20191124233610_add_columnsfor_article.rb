class AddColumnsforArticle < ActiveRecord::Migration[6.0]
  def change
  	add_column :articles, :precio, :number, default: 0.0
  	add_column :articles, :stock, :integer, default: 0
  	add_column :articles, :talla, :string, default: "S"
  end
end
