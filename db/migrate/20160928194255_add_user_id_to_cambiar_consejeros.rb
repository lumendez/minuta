class AddUserIdToCambiarConsejeros < ActiveRecord::Migration[5.0]
  def change
    add_reference :cambiar_consejeros, :user, foreign_key: true
  end
end
