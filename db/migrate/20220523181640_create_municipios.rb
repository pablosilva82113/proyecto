class CreateMunicipios < ActiveRecord::Migration[7.0]
  def change
    create_table :municipios do |t|
      t.string :nombre_m

      t.timestamps
    end
  end
end
