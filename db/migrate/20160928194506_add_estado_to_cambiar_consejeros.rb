class AddEstadoToCambiarConsejeros < ActiveRecord::Migration[5.0]
  def change
    add_column :cambiar_consejeros, :estado, :string
  end
end
