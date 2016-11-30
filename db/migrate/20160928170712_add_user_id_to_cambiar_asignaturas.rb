class AddUserIdToCambiarAsignaturas < ActiveRecord::Migration[5.0]
  def change
    add_reference :cambiar_asignaturas, :user, foreign_key: true
  end
end
