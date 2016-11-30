class AddClaveToAgregarAsignaturas < ActiveRecord::Migration[5.0]
  def change
    add_column :agregar_asignaturas, :clave, :string
  end
end
