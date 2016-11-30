class AddEstadoToTesisRegistros < ActiveRecord::Migration[5.0]
  def change
    add_column :tesis_registros, :estado, :string
  end
end
