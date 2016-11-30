class AddValidaCoordinadorToAgregarAsignaturas < ActiveRecord::Migration[5.0]
  def change
    add_column :agregar_asignaturas, :valida_coordinador, :boolean
  end
end
