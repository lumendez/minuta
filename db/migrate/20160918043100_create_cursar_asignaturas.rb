class CreateCursarAsignaturas < ActiveRecord::Migration[5.0]
  def change
    create_table :cursar_asignaturas do |t|
      t.string :nombre
      t.string :clave
      t.string :unidad

      t.timestamps
    end
  end
end
