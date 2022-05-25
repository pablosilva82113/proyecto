class CreateColonias < ActiveRecord::Migration[7.0]
  def change
    create_table :colonias do |t|
      t.string :nombre_c

      t.timestamps
    end
  end
end
