class AddValidaConsejeroToBajaProgramas < ActiveRecord::Migration[5.0]
  def change
    add_column :baja_programas, :valida_consejero, :boolean
  end
end
