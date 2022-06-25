class CreateLicitacions < ActiveRecord::Migration[7.0]
  def change
    create_table :licitacions do |t|
      t.string :nombre_proyecto
      t.string :descripcion
      t.integer :presupuesto
      t.integer :duracion_en_meses
      t.date :fecha_de_inicio
      t.string :fk_region
      t.string :fk_estado_licitacion

      t.timestamps
    end
  end
end
