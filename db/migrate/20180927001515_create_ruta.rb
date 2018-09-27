class CreateRuta < ActiveRecord::Migration[5.2]
  def change
    create_table :ruta do |t|
      t.string :nombre_ruta
      t.string :estado

      t.timestamps
    end
  end
end
