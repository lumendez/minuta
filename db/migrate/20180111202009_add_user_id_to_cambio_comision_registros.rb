class AddUserIdToCambioComisionRegistros < ActiveRecord::Migration[5.0]
  def change
    add_reference :cambio_comision_registros, :user, foreign_key: true
  end
end
