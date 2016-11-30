class AddClaveToBajaAsignaturas < ActiveRecord::Migration[5.0]
  def change
    add_column :baja_asignaturas, :clave, :string
  end
end
