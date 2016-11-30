class AddValidaConsejeroToCursarAsignaturas < ActiveRecord::Migration[5.0]
  def change
    add_column :cursar_asignaturas, :valida_consejero, :boolean
  end
end
