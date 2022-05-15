class CreateActividadesAlumnos < ActiveRecord::Migration[7.0]
  def change
    create_table :actividades_alumnos do |t|
      t.integer :actividad_id
      t.integer :alumno_id
      t.float :calificacion
      t.text :observaciones

      t.timestamps
    end
  end
end
