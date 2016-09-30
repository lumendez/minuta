class AddValidaCoordinadorToCambiarTemas < ActiveRecord::Migration[5.0]
  def change
    add_column :cambiar_temas, :valida_coordinador, :boolean
  end
end
