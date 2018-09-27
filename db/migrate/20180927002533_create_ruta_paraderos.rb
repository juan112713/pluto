class CreateRutaParaderos < ActiveRecord::Migration[5.2]
  def change
    create_table :ruta_paraderos do |t|
      t.references :ruta, foreign_key: true
      t.references :paradero, foreign_key: true
      t.integer :cantidad_solicitudes
      t.boolean :punto_inicial
      t.boolean :punto_fin
      t.string :estado

      t.timestamps
    end
  end
end
