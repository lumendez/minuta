class AddUserIdToBajaProgramas < ActiveRecord::Migration[5.0]
  def change
    add_reference :baja_programas, :user, foreign_key: true
  end
end
