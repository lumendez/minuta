class AddRevisadoToComiteRegistros < ActiveRecord::Migration[5.0]
  def change
    add_column :comite_registros, :revisado, :boolean, default: false
  end
end
