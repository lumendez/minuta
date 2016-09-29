class AddValidaConsejeroToCambiarConsejeros < ActiveRecord::Migration[5.0]
  def change
    add_column :cambiar_consejeros, :valida_consejero, :boolean
  end
end
