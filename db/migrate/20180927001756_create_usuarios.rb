class CreateUsuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :apellido
      t.string :tipo_doc_identidad
      t.string :num_doc_identidad
      t.date :fecha_nacimiento
      t.string :estado

      t.timestamps
    end
  end
end
