class AddEstadoToExamenGraduados < ActiveRecord::Migration[5.0]
  def change
    add_column :examen_graduados, :estado, :string
  end
end
