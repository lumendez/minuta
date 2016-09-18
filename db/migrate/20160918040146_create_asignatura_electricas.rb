class CreateAsignaturaElectricas < ActiveRecord::Migration[5.0]
  def change
    create_table :asignatura_electricas do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
