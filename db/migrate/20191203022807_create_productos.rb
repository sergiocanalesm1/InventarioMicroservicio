class CreateProductos < ActiveRecord::Migration[6.0]
  def change
    create_table :productos do |t|
      t.string :nombre
      t.integer :cantidad


      t.timestamps
    end
  end
end
