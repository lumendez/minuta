class AddValidaCoordinadorToExamenGraduados < ActiveRecord::Migration[5.0]
  def change
    add_column :examen_graduados, :valida_coordinador, :boolean
  end
end
