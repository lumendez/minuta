class AddEstadoToAgregarAsignaturas < ActiveRecord::Migration[5.0]
  def change
    add_column :agregar_asignaturas, :estado, :string
  end
end
