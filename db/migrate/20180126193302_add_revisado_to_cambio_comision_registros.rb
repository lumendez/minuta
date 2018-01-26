class AddRevisadoToCambioComisionRegistros < ActiveRecord::Migration[5.0]
  def change
    add_column :cambio_comision_registros, :revisado, :boolean
  end
end
