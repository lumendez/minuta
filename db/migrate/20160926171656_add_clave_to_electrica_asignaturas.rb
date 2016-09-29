class AddClaveToElectricaAsignaturas < ActiveRecord::Migration[5.0]
  def change
    add_column :electrica_asignaturas, :clave, :string
  end
end
