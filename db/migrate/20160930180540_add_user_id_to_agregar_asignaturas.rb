class AddUserIdToAgregarAsignaturas < ActiveRecord::Migration[5.0]
  def change
    add_reference :agregar_asignaturas, :user, foreign_key: true
  end
end
