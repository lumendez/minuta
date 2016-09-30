class AddValidaConsejeroToTesisRegistros < ActiveRecord::Migration[5.0]
  def change
    add_column :tesis_registros, :valida_consejero, :boolean
  end
end
