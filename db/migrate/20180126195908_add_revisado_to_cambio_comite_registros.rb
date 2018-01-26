class AddRevisadoToCambioComiteRegistros < ActiveRecord::Migration[5.0]
  def change
    add_column :cambio_comite_registros, :revisado, :boolean
  end
end
