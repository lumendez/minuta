class AddValidaCoordinadorToCambiarConsejeros < ActiveRecord::Migration[5.0]
  def change
    add_column :cambiar_consejeros, :valida_coordinador, :boolean
  end
end
