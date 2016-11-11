class CreateMecanicaAsignaturas < ActiveRecord::Migration[5.0]
  def change
    create_table :mecanica_asignaturas do |t|
      t.string :nombre
      t.string :clave

      t.timestamps
    end
  end
end
