class AddValidaConsejeroToComiteRegistros < ActiveRecord::Migration[5.0]
  def change
    add_column :comite_registros, :valida_consejero, :boolean
  end
end
