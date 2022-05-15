class CreateActividadesTipo < ActiveRecord::Migration[7.0]
  def change
    create_table :actividades_tipo do |t|
      t.string :tipo

      t.timestamps
    end
  end
end
