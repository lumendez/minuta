class AddClaveActualToCambiarAsignaturas < ActiveRecord::Migration[5.0]
  def change
    add_column :cambiar_asignaturas, :clave_actual, :string
  end
end
