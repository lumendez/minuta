class AddValidaCoordinadorToCambiarAsignaturas < ActiveRecord::Migration[5.0]
  def change
    add_column :cambiar_asignaturas, :valida_coordinador, :boolean
  end
end
