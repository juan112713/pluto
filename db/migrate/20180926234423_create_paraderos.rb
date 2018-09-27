class CreateParaderos < ActiveRecord::Migration[5.2]
  def change
    create_table :paraderos do |t|
      t.string :nombre_p
      t.string :tipo_p
      t.string :ubicacion_p

      t.timestamps
    end
  end
end
