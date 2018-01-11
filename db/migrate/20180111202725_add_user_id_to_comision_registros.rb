class AddUserIdToComisionRegistros < ActiveRecord::Migration[5.0]
  def change
    add_reference :comision_registros, :user, foreign_key: true
  end
end
