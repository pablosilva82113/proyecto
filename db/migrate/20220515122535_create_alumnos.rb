class CreateAlumnos < ActiveRecord::Migration[7.0]
  def change
    create_table :alumnos do |t|
      t.integer :carrera_id
      t.integer :user_id
      t.integer :no_control
      t.integer :semestre
      t.string :nombre
      t.string :apellido_p
      t.string :apellido_m

      t.timestamps
    end
  end
end
