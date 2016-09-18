class CreateCambiarAsignaturas < ActiveRecord::Migration[5.0]
  def change
    create_table :cambiar_asignaturas do |t|
      t.string :anterior
      t.string :actual

      t.timestamps
    end
  end
end
