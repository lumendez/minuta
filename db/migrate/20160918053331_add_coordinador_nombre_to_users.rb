class AddCoordinadorNombreToUsers < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :coordinador_nombre, foreign_key: true
  end
end
