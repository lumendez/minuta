class AddValidaCoordinadorToBajaProgramas < ActiveRecord::Migration[5.0]
  def change
    add_column :baja_programas, :valida_coordinador, :boolean
  end
end
