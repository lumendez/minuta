class AddEstadoToCursarAsignaturas < ActiveRecord::Migration[5.0]
  def change
    add_column :cursar_asignaturas, :estado, :string
  end
end
