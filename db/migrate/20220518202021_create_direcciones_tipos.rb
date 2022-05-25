class CreateDireccionesTipos < ActiveRecord::Migration[7.0]
  def change
    create_table :direcciones_tipos do |t|
      t.string :tipo

      t.timestamps
    end
  end
end
