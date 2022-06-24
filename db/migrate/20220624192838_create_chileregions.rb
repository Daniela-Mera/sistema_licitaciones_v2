class CreateChileregions < ActiveRecord::Migration[7.0]
  def change
    create_table :chileregions do |t|
      t.string :nombre_region

      t.timestamps
    end
  end
end
