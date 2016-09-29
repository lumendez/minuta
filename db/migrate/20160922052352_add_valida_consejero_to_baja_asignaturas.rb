class AddValidaConsejeroToBajaAsignaturas < ActiveRecord::Migration[5.0]
  def change
    add_column :baja_asignaturas, :valida_consejero, :boolean
  end
end
