class AddRevisadoToCambioDirectorTesisRegistros < ActiveRecord::Migration[5.0]
  def change
    add_column :cambio_director_tesis_registros, :revisado, :boolean, default: false
  end
end
