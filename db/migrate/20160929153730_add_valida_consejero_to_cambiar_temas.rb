class AddValidaConsejeroToCambiarTemas < ActiveRecord::Migration[5.0]
  def change
    add_column :cambiar_temas, :valida_consejero, :boolean
  end
end
