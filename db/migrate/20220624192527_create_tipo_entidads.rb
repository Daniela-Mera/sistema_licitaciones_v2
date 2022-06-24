class CreateTipoEntidads < ActiveRecord::Migration[7.0]
  def change
    create_table :tipo_entidads do |t|
      t.string :entidad
      t.string :descripcion

      t.timestamps
    end
  end
end
