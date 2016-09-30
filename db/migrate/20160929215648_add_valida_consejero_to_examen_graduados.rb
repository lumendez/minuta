class AddValidaConsejeroToExamenGraduados < ActiveRecord::Migration[5.0]
  def change
    add_column :examen_graduados, :valida_consejero, :boolean
  end
end
