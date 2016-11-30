class AddEstadoToBajaAsignaturas < ActiveRecord::Migration[5.0]
  def change
    add_column :baja_asignaturas, :estado, :string
  end
end
