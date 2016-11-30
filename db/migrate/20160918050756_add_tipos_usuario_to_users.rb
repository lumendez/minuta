class AddTiposUsuarioToUsers < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :tipos_usuario, foreign_key: true
  end
end
