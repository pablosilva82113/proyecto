class CreateDirecciones < ActiveRecord::Migration[7.0]
  def change
    create_table :direcciones do |t|
      t.string :calle
      t.integer :numero_exterior
      t.integer :numero_interior
      t.string :colonia
      t.string :municipio
      t.string :estado
      t.integer :codigo_postal
      t.string :referencia

      t.timestamps
    end
  end
end
