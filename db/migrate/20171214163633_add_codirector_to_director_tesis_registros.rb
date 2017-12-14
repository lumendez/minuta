class AddCodirectorToDirectorTesisRegistros < ActiveRecord::Migration[5.0]
  def change
    add_column :director_tesis_registros, :codirector, :string
  end
end
