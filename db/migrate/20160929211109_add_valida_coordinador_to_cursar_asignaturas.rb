class AddValidaCoordinadorToCursarAsignaturas < ActiveRecord::Migration[5.0]
  def change
    add_column :cursar_asignaturas, :valida_coordinador, :boolean
  end
end
