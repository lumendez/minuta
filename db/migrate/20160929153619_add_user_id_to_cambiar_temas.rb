class AddUserIdToCambiarTemas < ActiveRecord::Migration[5.0]
  def change
    add_reference :cambiar_temas, :user, foreign_key: true
  end
end
