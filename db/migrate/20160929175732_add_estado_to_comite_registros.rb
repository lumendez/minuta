class AddEstadoToComiteRegistros < ActiveRecord::Migration[5.0]
  def change
    add_column :comite_registros, :estado, :string
  end
end
