class CreateConductors < ActiveRecord::Migration[5.2]
  def change
    create_table :conductors do |t|
      t.string :nombre
      t.string :apellido
      t.string :tipo_doc_identidad
      t.string :num_doc_identidad
      t.string :estado

      t.timestamps
    end
  end
end
