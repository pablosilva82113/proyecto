class CreateActividades < ActiveRecord::Migration[7.0]
  def change
    create_table :actividades do |t|
      t.integer :tipo_id
      t.integer :docente_id
      t.string :titulo
      t.text :descripcion

      t.timestamps
    end
  end
end
