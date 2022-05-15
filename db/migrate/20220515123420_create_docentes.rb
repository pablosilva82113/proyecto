class CreateDocentes < ActiveRecord::Migration[7.0]
  def change
    create_table :docentes do |t|
      t.integer :user_id
      t.string :nombre
      t.string :apellido_p
      t.string :apellido_m

      t.timestamps
    end
  end
end
