class AddRevisadoToComisionRegistro < ActiveRecord::Migration[5.0]
  def change
    add_column :comision_registros, :revisado, :boolean
  end
end
