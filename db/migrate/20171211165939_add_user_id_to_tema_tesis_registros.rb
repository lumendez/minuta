class AddUserIdToTemaTesisRegistros < ActiveRecord::Migration[5.0]
  def change
    add_reference :tema_tesis_registros, :user, foreign_key: true
  end
end
