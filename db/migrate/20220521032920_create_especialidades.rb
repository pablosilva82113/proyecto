class CreateEspecialidades < ActiveRecord::Migration[7.0]
  def change
    create_table :especialidades do |t|
      t.string :nombre_especialidad

      t.timestamps
    end
  end
end
