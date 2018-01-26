class AddRevisadoToCambiarTemas < ActiveRecord::Migration[5.0]
  def change
    add_column :cambiar_temas, :revisado, :boolean, default: false
  end
end
