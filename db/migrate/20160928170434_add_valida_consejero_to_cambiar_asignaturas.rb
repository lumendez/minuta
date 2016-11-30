class AddValidaConsejeroToCambiarAsignaturas < ActiveRecord::Migration[5.0]
  def change
    add_column :cambiar_asignaturas, :valida_consejero, :boolean
  end
end
