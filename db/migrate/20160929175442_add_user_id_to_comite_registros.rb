class AddUserIdToComiteRegistros < ActiveRecord::Migration[5.0]
  def change
    add_reference :comite_registros, :user, foreign_key: true
  end
end
