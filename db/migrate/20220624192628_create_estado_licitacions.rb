class CreateEstadoLicitacions < ActiveRecord::Migration[7.0]
  def change
    create_table :estado_licitacions do |t|
      t.string :estado
      t.string :descripcion

      t.timestamps
    end
  end
end
