class AddUserIdToBajaAsignaturas < ActiveRecord::Migration[5.0]
  def change
    add_reference :baja_asignaturas, :user, foreign_key: true
  end
end
