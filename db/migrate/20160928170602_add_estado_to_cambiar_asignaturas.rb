class AddEstadoToCambiarAsignaturas < ActiveRecord::Migration[5.0]
  def change
    add_column :cambiar_asignaturas, :estado, :string
  end
end
