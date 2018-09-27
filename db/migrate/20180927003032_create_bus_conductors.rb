class CreateBusConductors < ActiveRecord::Migration[5.2]
  def change
    create_table :bus_conductors do |t|
      t.references :bus, foreign_key: true
      t.references :conductor, foreign_key: true

      t.timestamps
    end
  end
end
