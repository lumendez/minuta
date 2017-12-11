class AddValidaConsejeroToTemaTesisRegistros < ActiveRecord::Migration[5.0]
  def change
    add_column :tema_tesis_registros, :valida_consejero, :boolean
  end
end
