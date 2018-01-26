class AddRevisadoToDirectorTesisRegistros < ActiveRecord::Migration[5.0]
  def change
    add_column :director_tesis_registros, :revisado, :boolean, default: false
  end
end
