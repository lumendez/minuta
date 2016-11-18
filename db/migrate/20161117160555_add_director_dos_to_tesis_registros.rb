class AddDirectorDosToTesisRegistros < ActiveRecord::Migration[5.0]
  def change
    add_column :tesis_registros, :director_dos, :string
  end
end
