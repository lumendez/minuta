class CreateAgregarAsignaturas < ActiveRecord::Migration[5.0]
  def change
    create_table :agregar_asignaturas do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
