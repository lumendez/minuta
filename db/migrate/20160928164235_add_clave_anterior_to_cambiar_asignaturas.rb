class AddClaveAnteriorToCambiarAsignaturas < ActiveRecord::Migration[5.0]
  def change
    add_column :cambiar_asignaturas, :clave_anterior, :string
  end
end
