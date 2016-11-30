class AddValidaConsejeroToAgregarAsignaturas < ActiveRecord::Migration[5.0]
  def change
    add_column :agregar_asignaturas, :valida_consejero, :boolean
  end
end
