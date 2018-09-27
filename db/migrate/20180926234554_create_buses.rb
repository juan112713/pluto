class CreateBuses < ActiveRecord::Migration[5.2]
  def change
    create_table :buses do |t|
      t.string :movil
      t.integer :cantidad_sillas
      t.integer :total_pasajeros
      t.string :estado

      t.timestamps
    end
  end
end
