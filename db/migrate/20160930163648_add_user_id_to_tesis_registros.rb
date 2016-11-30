class AddUserIdToTesisRegistros < ActiveRecord::Migration[5.0]
  def change
    add_reference :tesis_registros, :user, foreign_key: true
  end
end
