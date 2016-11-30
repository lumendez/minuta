class AddValidaCoordinadorToTesisRegistros < ActiveRecord::Migration[5.0]
  def change
    add_column :tesis_registros, :valida_coordinador, :boolean
  end
end
