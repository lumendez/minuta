class AddUserIdToCursarAsignaturas < ActiveRecord::Migration[5.0]
  def change
    add_reference :cursar_asignaturas, :user, foreign_key: true
  end
end
