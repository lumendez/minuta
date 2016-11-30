class AddEstadoToCambiarTemas < ActiveRecord::Migration[5.0]
  def change
    add_column :cambiar_temas, :estado, :string
  end
end
